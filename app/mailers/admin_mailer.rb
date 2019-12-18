class AdminMailer < ApplicationMailer
  def send_confirmation(collected_data)
    @collected_data = collected_data
    mail(to: @collected_data.email, subject: "Trust&Bench - Votre demande a bien été prise en compte")
  end
  def send_csv_attachment(collected_data1,collected_data2,collected_data3,collected_data4,collected_data5,collected_data6,collected_data7, csv_export)
    @collected_data = collected_data1
    @collected_data2 = collected_data2
    @collected_data3 = collected_data3
    @collected_data4 = collected_data4
    @collected_data5 = collected_data5
    @collected_data6 = collected_data6
    @collected_data7 = collected_data7
    @csv_export = csv_export
    attachments["#{DateTime.now.strftime("%Y%m%d")}_données_récupérées.csv"] = {mime_type: 'text/csv', content: @csv_export}
    mail(to: "thibaultjouan@hotmail.com", subject: 'Une nouvelle demande a été faite sur Trust&Bench')
    #mail(to: "quentin.prevost@argon-consult.com", cc: "renaud.texcier@argon-consult.com", subject: 'Une nouvelle demande a été faite sur Trust&Bench')
  end
end
