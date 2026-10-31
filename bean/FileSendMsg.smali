.class public Lcom/aee/sport/magicam/bean/FileSendMsg;
.super Lcom/aee/sport/magicam/bean/SendMsg;
.source "FileSendMsg.java"


# instance fields
.field private offset:I

.field private sendFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "msg_id"    # I
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "sendFilePath"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    iput p4, p0, Lcom/aee/sport/magicam/bean/FileSendMsg;->offset:I

    .line 38
    iput-object p5, p0, Lcom/aee/sport/magicam/bean/FileSendMsg;->sendFilePath:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 6

    .prologue
    .line 43
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v2, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "msg_id"

    iget v4, p0, Lcom/aee/sport/magicam/bean/FileSendMsg;->msg_id:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    const-string v3, "token"

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    iget v4, v4, Lcom/aee/sport/magicam/AeeApplication;->token:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    iget-object v3, p0, Lcom/aee/sport/magicam/bean/FileSendMsg;->param:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 53
    const-string v3, "param"

    iget-object v4, p0, Lcom/aee/sport/magicam/bean/FileSendMsg;->param:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_0
    const-string v3, "offset"

    iget v4, p0, Lcom/aee/sport/magicam/bean/FileSendMsg;->offset:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/aee/sport/magicam/bean/FileSendMsg;->sendFilePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    const-string v3, "size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 61
    const-string v3, "md5sum"

    invoke-static {v1}, Lcom/aee/sport/magicam/utils/FileUtils;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 69
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v3

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 69
    const-string v3, ""

    goto :goto_0
.end method
