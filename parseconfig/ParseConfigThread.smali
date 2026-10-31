.class public Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;
.super Ljava/lang/Thread;
.source "ParseConfigThread.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private b:Z

.field private mSocketClient:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/aee/sport/magicam/parseconfig/ParseConfig;)V
    .locals 2
    .param p1, "param"    # Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    const-string v0, "ParseConfigThread"

    iput-object v0, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->b:Z

    .line 18
    iput-object v1, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->mSocketClient:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    .line 19
    iput-object v1, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->url:Ljava/net/URL;

    .line 23
    iput-object p1, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->mSocketClient:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->b:Z

    .line 29
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    .line 34
    iget-object v10, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->TAG:Ljava/lang/String;

    const-string v11, " ParseConfigThread start ...... "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v5, 0x0

    .line 37
    .local v5, "ret":I
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, "config":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 39
    .local v6, "s":C
    const/4 v7, 0x0

    .local v7, "start":I
    const/4 v2, 0x0

    .local v2, "end":I
    const/4 v4, 0x0

    .line 40
    .local v4, "length":I
    const/4 v8, 0x0

    .line 41
    .local v8, "str":Ljava/lang/String;
    new-instance v10, Ljava/net/URL;

    const-string v11, "http://192.168.42.1/pref/config"

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->url:Ljava/net/URL;

    .line 42
    iget-object v10, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 43
    .local v9, "urlConn":Ljava/net/HttpURLConnection;
    const/16 v10, 0xbb8

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 44
    const/16 v10, 0xbb8

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 45
    const-string v10, "Connection"

    const-string v11, "Keep-Alive"

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 48
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v3, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 52
    .local v3, "in":Ljava/io/InputStreamReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v5

    .line 53
    const/4 v10, -0x1

    if-ne v5, v10, :cond_0

    .line 58
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 59
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 60
    invoke-virtual {p0}, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->a()V

    .line 61
    iget-object v10, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "config.toString = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 63
    iget-object v10, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "config length  =  "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 65
    iget-object v10, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->mSocketClient:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    invoke-virtual {v10, v8}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->parseConfig(Ljava/lang/String;)V

    .line 76
    .end local v0    # "config":Ljava/lang/StringBuilder;
    .end local v2    # "end":I
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v4    # "length":I
    .end local v6    # "s":C
    .end local v7    # "start":I
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "urlConn":Ljava/net/HttpURLConnection;
    :goto_1
    return-void

    .line 55
    .restart local v0    # "config":Ljava/lang/StringBuilder;
    .restart local v2    # "end":I
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "length":I
    .restart local v6    # "s":C
    .restart local v7    # "start":I
    .restart local v8    # "str":Ljava/lang/String;
    .restart local v9    # "urlConn":Ljava/net/HttpURLConnection;
    :cond_0
    int-to-char v6, v5

    .line 56
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 68
    .end local v0    # "config":Ljava/lang/StringBuilder;
    .end local v2    # "end":I
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v4    # "length":I
    .end local v6    # "s":C
    .end local v7    # "start":I
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
