class ChatController < ApplicationController
  def index
  end

  def show
    @keyword = chat_params[:keyword]

    response = @client.chat(
      parameters: {
          model: "gpt-3.5-turbo",
          messages: [{ role: "user", content: "あなたはサービスの名前を付ける天才です。斬新で、わかりやすいサービス名を思いつくことが出来ます。#{@keyword}というキーワードから、サービス名を５個日本語で考えてみてください。なぜそう考えたのかも教えてください。" }],
      })

    @chats = response.dig("choices", 0, "message", "content")
  end
  
  private

  def chat_params
    params.permit(:keyword)
  end
end
