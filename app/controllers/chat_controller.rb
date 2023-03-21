class ChatController < ApplicationController
  def index
  end

  def show
    @keyword1 = params[:keyword1]
    @keyword2 = params[:keyword2]
    @keyword3 = params[:keyword3]
    @keyword4 = params[:keyword4]
    @keyword5 = params[:keyword5]

    response = @client.chat(
      parameters: {
          model: "gpt-3.5-turbo",
          messages: [{ role: "user", content: "あなたはサービスの名前を付ける天才です。斬新で、わかりやすいサービス名を思いつくことが出来ます。#{@keyword1}、#{@keyword2}、#{@keyword3}、#{@keyword5}というキーワードから、サービス名を５個日本語で考えてみてください。なぜそう考えたのかも教えてください。" }],
      })

    @chats = response.dig("choices", 0, "message", "content")
  end
end
