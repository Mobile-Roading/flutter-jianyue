## 简悦 

一款简单免费跨平台的音乐播放器，目前可以运行在Mac、iOS、Android上，Web端本来也是可以的，但是SQLite数据存储还没有比较好的方案，就暂时放弃了，Windows没有装Win系统的电脑，所以还没跑过，不知道效果啥样，PC和手机端都做了单独的适配。UI界面和icon用Sketch来设计完成，还支持自动切换深色/浅色模式，后端部分接口时候云函数实现（后来改成Dart代码实现），用于拉取歌单和单曲的播放链接。

### 主要功能：

1. 音乐播放、暂停、下一首、收藏、歌词显示。
2. 单曲或者歌单搜索播放。
3. 本地存储收藏的歌曲，列表中展示，点击可播放。
4. 各平台热门歌单。
5. 最近歌曲排行榜。
6. 深色 / 浅色模式切换。

### 运行环境：

```markdown
Channel stable, 2.5.2
```


### Change List

|   日期  |   更新内容   |
| :-------: | :-------: |
| 2022-09-13 | 支持咪咕音乐的搜索、歌单、单曲及播放链接等功能 |
| 2022-09-09 | 将后端api接口改为flutter本地实现，修复酷狗和酷我搜索等接口报错问题 |


### PC端效果

|                             Dark                             |                            Light                             |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| ![image-20220719182826564](https://s2.loli.net/2022/07/20/xjRtCsOeKuVZcf9.png) | ![image-20220719182713602](https://s2.loli.net/2022/07/20/BF6GjActRLqPmQK.png) |
| ![image-20220719182304064](https://s2.loli.net/2022/07/20/YcOzflk7Fg56InS.png) | ![image-20220719183007520](https://s2.loli.net/2022/07/20/otd97Dvu5Kh3Umj.png) |
| ![image-20220719182328498](https://s2.loli.net/2022/07/20/1qnb4HGjRxVi3UB.png) | ![image-20220719183031533](https://s2.loli.net/2022/07/20/6SDKeVdwOQ43Ljb.png) |
| ![image-20220719182446052](https://s2.loli.net/2022/07/20/6CceQDJRxEr5PMd.png) | ![image-20220719183218870](https://s2.loli.net/2022/07/20/VUdh2qDNOwuZ81p.png) |
| ![image-20220719182521347](https://s2.loli.net/2022/07/20/qBb4ZogGfYpJQxv.png) | ![image-20220719183201305](https://s2.loli.net/2022/07/20/D4rmN83Md5qgRBu.png) |

### 移动端效果

|                             Dark                             |                            Light                             |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| ![391658286368_.pic](https://s2.loli.net/2022/07/20/9qHY3mylBCKn5t8.jpg) | ![381658286368_.pic](https://s2.loli.net/2022/07/20/OSeiJsYhqXzrlvw.jpg) |
| ![491658286755_.pic](https://s2.loli.net/2022/07/20/thJ8iefyn4Cbzqs.jpg) | ![481658286754_.pic](https://s2.loli.net/2022/07/20/YkLfW6nXesBQRxg.jpg) |
| ![431658286370_.pic](https://s2.loli.net/2022/07/20/NqvOGosW5cm2Bbt.jpg) | ![421658286369_.pic](https://s2.loli.net/2022/07/20/CSArugdF7wMTX3a.jpg) |
| ![441658286370_.pic](https://s2.loli.net/2022/07/20/bdBYlmLfSiDUJPM.jpg) | ![411658286369_.pic](https://s2.loli.net/2022/07/20/1Q8XqlFpAE7T2cL.jpg) |
| ![451658286370_.pic](https://s2.loli.net/2022/07/20/ubAprcSdTe6n3Va.jpg) | ![401658286368_.pic](https://s2.loli.net/2022/07/20/cyYZJeTDlzHtFPn.jpg) |
| ![471658286375_.pic](https://s2.loli.net/2022/07/20/eSNH1o3WBYqEzK5.jpg) |                                                              |


更多文章更新在公众号：flutter_toto
[flutter_toto](https://s2.loli.net/2022/12/12/EWvyFX2LgiaeZ3d.jpg)


*学习交流分享TG：[flutter_todo](https://t.me/flutter_toto)*




感谢所有的同类的开源项目，下面几个参考比较多的或者在项目里面有用到的：

[Meting](https://github.com/metowolf/Meting)

[NeteaseCloudMusicApi](https://github.com/Binaryify/NeteaseCloudMusicApi)

[www.googlec.cc](http://www.googlec.cc/)

[v1.hitokoto.cn](https://v1.hitokoto.cn/)

