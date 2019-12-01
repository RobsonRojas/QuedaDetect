%Detecta a queda
if teta >= Teta_c1 & teta <= Teta_c2 & teta ~= 0
fprintf('Teta = %.1f caractere = c -> pessoa caída\n', teta);

caractere(k)=3;
% Gera o timestamps da data e hora

tStamps = datetime('now')-minutes(9):minutes(1):datetime('now');
%cria o evento queda par aindica que o idoso caiu
queda=ones(10,3);% ID canal criado no Thing Speak
channelID = 868XXX; % Chave para escrever no canal criado
writeKey = 'YI514RZSPKPZZXXX';
%comando para enviar informação de queda para o Thing Speak
thingSpeakWrite(channelID,queda,'TimeStamp',tStamps,'WriteKey',writeKey)

pause(15.00); %pausa de 15 segundos para atualizar no Thing Speak
