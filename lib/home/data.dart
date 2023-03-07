class post{
  late String imageurl;
  late String desc;
  late bool favorite;

  post(this.imageurl, this.desc, this.favorite);
}

List<post> dataList = [
  post('https://cdn.discordapp.com/attachments/928748304077045792/1082576395970023434/image0.jpg', 'weirdo\ndsascaascsac\nasfascacascascasca', true),
  post('https://cdn.discordapp.com/attachments/928748304077045792/1082572015027884062/image0.jpg', 'yaaaaaaay\nyaaaaaaaaaaaaaaaaaaaaaaaay', true),
  post('https://cdn.discordapp.com/attachments/928748304077045792/1082571558511456267/image0.jpg', 'dkvhsudfksdbvkhsdbvksjvnsdlkvblsdnv', false),
];

late int pressedIdx;