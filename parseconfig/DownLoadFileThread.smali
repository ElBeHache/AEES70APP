.class public Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;
.super Ljava/lang/Thread;
.source "DownLoadFileThread.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private fw:Ljava/io/FileWriter;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    const-string v0, "ParseConfigThread"

    iput-object v0, p0, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;->TAG:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;->file:Ljava/io/File;

    .line 31
    iput-object v1, p0, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;->url:Ljava/net/URL;

    .line 32
    iput-object v1, p0, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;->fw:Ljava/io/FileWriter;

    .line 36
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/aee/sport/magicam/AeeApplication;->isReadFinish:Z

    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, " ParseConfigThread start ...... "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v14, "http://192.168.42.1/DCIM/"

    .line 44
    .local v14, "url1":Ljava/lang/String;
    const/16 v15, 0x64

    .line 45
    .local v15, "url2":I
    const-string v16, "MEDIA/"

    .line 46
    .local v16, "url3":Ljava/lang/String;
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/aee/sport/magicam/AeeApplication;->fileslist:Ljava/util/List;

    .line 47
    .local v7, "fl":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileContent;>;"
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/aee/sport/magicam/AeeApplication;->preFileslist:Ljava/util/List;

    .line 52
    .local v13, "pfl":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileContent;>;"
    :goto_0
    const/4 v10, 0x0

    .line 54
    .local v10, "netFileInputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v18, Ljava/net/URL;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;->url:Ljava/net/URL;

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;->url:Ljava/net/URL;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .line 58
    .local v8, "httpConn":Ljava/net/URLConnection;
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 59
    if-nez v10, :cond_0

    .line 111
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/aee/sport/magicam/AeeApplication;->isReadFinish:Z

    .line 126
    .end local v8    # "httpConn":Ljava/net/URLConnection;
    :goto_1
    return-void

    .line 63
    .restart local v8    # "httpConn":Ljava/net/URLConnection;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;->url:Ljava/net/URL;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/jsoup/helper/HttpConnection;->connect(Ljava/net/URL;)Lorg/jsoup/Connection;

    move-result-object v17

    check-cast v17, Lorg/jsoup/helper/HttpConnection;

    .line 64
    .local v17, "urlConn":Lorg/jsoup/helper/HttpConnection;
    const v18, 0xea60

    invoke-virtual/range {v17 .. v18}, Lorg/jsoup/helper/HttpConnection;->timeout(I)Lorg/jsoup/Connection;

    .line 65
    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/helper/HttpConnection;->post()Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 66
    .local v2, "doc":Lorg/jsoup/nodes/Document;
    const-string v18, "table tr td:gt(1)"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    .line 68
    .local v4, "elements":Lorg/jsoup/select/Elements;
    const/4 v5, 0x0

    .line 69
    .local v5, "fc":Lcom/aee/sport/magicam/bean/FileContent;
    const/4 v11, 0x0

    .line 70
    .local v11, "num":I
    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_2

    .line 108
    add-int/lit8 v15, v15, 0x1

    .line 51
    goto :goto_0

    .line 70
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jsoup/nodes/Element;

    .line 71
    .local v12, "p":Lorg/jsoup/nodes/Element;
    if-nez v11, :cond_3

    .line 72
    add-int/lit8 v11, v11, 0x1

    .line 73
    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v19

    const-string v20, "td a"

    invoke-virtual/range {v19 .. v20}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, ".thm"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 79
    new-instance v5, Lcom/aee/sport/magicam/bean/FileContent;

    .end local v5    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    invoke-direct {v5}, Lcom/aee/sport/magicam/bean/FileContent;-><init>()V

    .line 80
    .restart local v5    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aee/sport/magicam/parseconfig/DownLoadFileThread;->url:Ljava/net/URL;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/aee/sport/magicam/bean/FileContent;->setUrl(Ljava/lang/String;)V

    .line 81
    const v19, 0x7f080016

    invoke-static/range {v19 .. v19}, Lcom/aee/sport/magicam/AeeApplication;->getStr(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/aee/sport/magicam/bean/FileContent;->setDown(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v19

    const-string v20, "td a"

    invoke-virtual/range {v19 .. v20}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/aee/sport/magicam/bean/FileContent;->setName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v19

    const-string v20, "td:eq(2)"

    invoke-virtual/range {v19 .. v20}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/aee/sport/magicam/bean/FileContent;->setSize(Ljava/lang/String;)V

    .line 84
    const/4 v9, 0x1

    .line 85
    .local v9, "isflag":Z
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v19

    const-string v20, "td a"

    invoke-virtual/range {v19 .. v20}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object v19

    const-string v20, "_thm"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 86
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_5

    .line 92
    :goto_3
    if-eqz v9, :cond_1

    .line 93
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 114
    .end local v2    # "doc":Lorg/jsoup/nodes/Document;
    .end local v4    # "elements":Lorg/jsoup/select/Elements;
    .end local v5    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    .end local v8    # "httpConn":Ljava/net/URLConnection;
    .end local v9    # "isflag":Z
    .end local v11    # "num":I
    .end local v12    # "p":Lorg/jsoup/nodes/Element;
    .end local v17    # "urlConn":Lorg/jsoup/helper/HttpConnection;
    :catch_0
    move-exception v3

    .line 117
    .local v3, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/aee/sport/magicam/AeeApplication;->isReadFinish:Z

    goto/16 :goto_1

    .line 86
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "doc":Lorg/jsoup/nodes/Document;
    .restart local v4    # "elements":Lorg/jsoup/select/Elements;
    .restart local v5    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    .restart local v8    # "httpConn":Ljava/net/URLConnection;
    .restart local v9    # "isflag":Z
    .restart local v11    # "num":I
    .restart local v12    # "p":Lorg/jsoup/nodes/Element;
    .restart local v17    # "urlConn":Lorg/jsoup/helper/HttpConnection;
    :cond_5
    :try_start_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aee/sport/magicam/bean/FileContent;

    .line 87
    .local v6, "filec":Lcom/aee/sport/magicam/bean/FileContent;
    invoke-virtual {v6}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 88
    const/4 v9, 0x0

    .line 89
    goto :goto_3

    .line 97
    .end local v6    # "filec":Lcom/aee/sport/magicam/bean/FileContent;
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_8

    .line 103
    :goto_4
    if-eqz v9, :cond_1

    .line 104
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 119
    .end local v2    # "doc":Lorg/jsoup/nodes/Document;
    .end local v4    # "elements":Lorg/jsoup/select/Elements;
    .end local v5    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    .end local v8    # "httpConn":Ljava/net/URLConnection;
    .end local v9    # "isflag":Z
    .end local v11    # "num":I
    .end local v12    # "p":Lorg/jsoup/nodes/Element;
    .end local v17    # "urlConn":Lorg/jsoup/helper/HttpConnection;
    :catch_1
    move-exception v3

    .line 122
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/aee/sport/magicam/AeeApplication;->isReadFinish:Z

    goto/16 :goto_1

    .line 97
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "doc":Lorg/jsoup/nodes/Document;
    .restart local v4    # "elements":Lorg/jsoup/select/Elements;
    .restart local v5    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    .restart local v8    # "httpConn":Ljava/net/URLConnection;
    .restart local v9    # "isflag":Z
    .restart local v11    # "num":I
    .restart local v12    # "p":Lorg/jsoup/nodes/Element;
    .restart local v17    # "urlConn":Lorg/jsoup/helper/HttpConnection;
    :cond_8
    :try_start_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aee/sport/magicam/bean/FileContent;

    .line 98
    .restart local v6    # "filec":Lcom/aee/sport/magicam/bean/FileContent;
    invoke-virtual {v6}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v20

    if-eqz v20, :cond_7

    .line 99
    const/4 v9, 0x0

    .line 100
    goto :goto_4
.end method
