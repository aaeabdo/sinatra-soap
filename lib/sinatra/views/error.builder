xml.instruct!
xml.tag! 'soap:Envelope', 'xmlns:soap' => 'http://schemas.xmlsoap.org/soap/envelope/',
      'xmlns:xsi' => 'http://www.w3.org/2001/XMLSchema-instance' do
  xml.tag! 'soap:Body' do
    xml.tag! 'soap:Fault', :encodingStyle => 'http://schemas.xmlsoap.org/soap/encoding/' do
      xml.faultcode e.code
      xml.faultstring e.message
      if e.detail.present?
        xml.tag! 'detail' do
          hash_to_xml(xml, e.detail)
        end
      end
    end
  end
end
