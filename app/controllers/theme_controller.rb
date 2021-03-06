class ThemeController < ApplicationController

  before_action :set_theme_room, only: %i(show new02 new02update fase01think fase01updateTime fase01answer fase01update fase01answerBranch fase01good fase02think fase02answer fase02update fase02answerBranch fase02good fase01bad fase02bad)
 
  def show
    #01~08までの役割を明示する -->
    @hashu = ["インサイダー（テーマ："+@theme.Title+"）", "マスター（テーマ："+@theme.Title+"）", "市民", "市民", "市民", "市民", "市民", "市民", "市民", "タッグ", "タッグ", "クレイジー"]
    @user = [@room.User01Name, @room.User02Name, @room.User03Name, @room.User04Name, @room.User05Name, @room.User06Name, @room.User07Name, @room.User08Name]
  end

  def new
    @theme = Theme.new
    @room = Room.find_by(id: params[:room_id])
    @theme.theme_to_words.build
  end

  def create
    @theme = Theme.new(theme_params)
    @room = Room.find_by(id: params[:room_id])
    if @theme.save
      redirect_to new02_room_theme_url(@room, @theme)
    else
      render action: :new
    end
  end

  def new02
    seedArray = ["Insider", "Master"]
    normalRoleArray=["Normal01","Normal02","Normal03","Normal04","Normal05","Normal06","Normal07"]
    i = 2
    if @theme.TagCheck == 1
        seedArray.push("Tag1", "Tag2")
        i = i+2
    end
    if @theme.CrazyCheck == 1
        seedArray.push("Crazy")
        i = i+1
    end
    if @theme.PeaceCheck == 1
        if rand(@theme.Nop) + 1 == 1
          seedArray.delete("Insider")
          seedArray.delete("Crazy")
        end
        i = i-1
    end
    range = 0..@theme.Nop-i-1
    range.each do |num|
        seedArray.push(normalRoleArray[num])
    end
    @roleArray = seedArray
  end

  def new02update #new02のpach
    if @theme.update_attributes(theme_params)
      redirect_to room_theme_url(@room, @theme)
    else
      render action: new02_room_theme_url(@room, @theme), notice:"何かトラブルです"
    end
  end

  def fase01think #ファーズ01のゲーム中
  end

  def fase01updateTime #ファーズ01の時間ののpach
    if @theme.update_attributes(theme_params)
      redirect_to fase01answer_room_theme_url(@room, @theme)
    else
      render action: fase01updateTime_room_theme_url(@room, @theme), notice:"残り時間を更新してください"
    end
  end

  def fase01answer #ファーズ01の回答中
  end

  def fase01update #ファーズ01の回答のpost
    if @theme.update_attributes(theme_params)
      redirect_to fase01answerBranch_room_theme_url(@room, @theme)
    else
      render action: :edit
    end
  end

  def fase01answerBranch #フェーズ1の正否の判断をする
    if @theme.Fase01Answer == @theme.Title
      redirect_to fase01good_room_theme_url(@room, @theme)
    else
      redirect_to fase01bad_room_theme_url(@room, @theme), alert: "残念！！全員の負けです"
    end
  end

  def fase01good #ファーズ01の正解したとき
  end

  def fase02think #ファーズ02のゲーム中
    @fase02Time = 300 - @theme.Fase01Time.to_i
  end

  def fase02answer #ファーズ02の回答中
  end

  def fase02update #ファーズ02の回答のpost
    if @theme.update_attributes(theme_params)
      redirect_to fase02answerBranch_room_theme_url(@room, @theme)
    else
      render action: :edit, alert: "更新できませんでした"
    end
  end

  def fase02answerBranch #フェーズ2の正否の判断をする
    #回答の配列を作成
    answerArray = [@theme.Answer01,@theme.Answer02,@theme.Answer03,@theme.Answer04,@theme.Answer05,@theme.Answer06,@theme.Answer07,@theme.Answer08] 
    answerArrayNew = answerArray[0..@theme.Nop-1]
    
    #回答の中で最も投票数が多かった要素を配列で出す。ex. [nil, "C", "A"]
    max_size = answerArrayNew.count(answerArrayNew.max_by {|x| answerArrayNew.count(x)})
    @maxAnswer = answerArrayNew.map { |x| x if answerArrayNew.count(x) == max_size}.uniq.compact
    #最多要素の数
    @maxAnswerCount = @maxAnswer.length

    if @maxAnswerCount == 1 #最多要素の数が1だったら
      #変換する roomName→roomRoleへ
      userArray = [@room.User01Name, @room.User02Name, @room.User03Name, @room.User04Name, @room.User05Name, @room.User06Name, @room.User07Name, @room.User08Name]
      roleArray = [@room.User01Role, @room.User02Role, @room.User03Role, @room.User04Role, @room.User05Role, @room.User06Role, @room.User07Role, @room.User08Role] 
      @temp = roleArray.slice(userArray.index(@maxAnswer.first))

      if @temp == @theme.Insider
        redirect_to fase02good_room_theme_url(@room, @theme), alert: "市民、勝利！！　インサイダーの負けです"
      else
        redirect_to fase02bad_room_theme_url(@room, @theme), alert: "市民、残念！！　インサイダーの勝利です"
      end
    else #最多要素が複数個あったら
      redirect_to fase02answer_room_theme_url(@room, @theme), notice: "最多投票数が同率になりました。"+String(@maxAnswer)+"さんで決戦投票をしてください"
    end
  end

  def fase02good #ファーズ02の正解したとき
  end

  def fase01bad #ファーズ02の正解したとき
  end

  def fase02bad #ファーズ02の正解したとき
  end

  private
    def theme_params
      params.require(:theme).permit(:room_id,:Insider,:Master,:Normal01,:Normal02,:Normal03,:Normal04,:Normal05,:Normal06,:Normal07,:Tag1,:Tag2,:Crazy,:Fase01Answer,:Answer01,:Answer02,:Answer03,:Answer04,:Answer05,:Answer06,:Answer07,:Answer08,:Fase01Time,:Title,:Nop,:PeaceCheck,:TagCheck,:CrazyCheck)
    end

    # ここにメソッドを追加する
    def set_theme_room
      @theme = Theme.find(params[:id])
      @room = Room.find_by(id: params[:room_id])
    end
end