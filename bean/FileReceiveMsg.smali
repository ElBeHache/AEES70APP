.class public Lcom/aee/sport/magicam/bean/FileReceiveMsg;
.super Lcom/aee/sport/magicam/bean/SendMsg;
.source "FileReceiveMsg.java"


# instance fields
.field private offset:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "msg_id"    # I
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "offset"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    iput p4, p0, Lcom/aee/sport/magicam/bean/FileReceiveMsg;->offset:I

    .line 31
    return-void
.end method

.method public static getParamJson(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bytessent"    # I
    .param p1, "md5sum"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v1, ""

    .line 38
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v2, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "bytessent"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v3, "md5sum"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 47
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "msg_id"

    iget v3, p0, Lcom/aee/sport/magicam/bean/FileReceiveMsg;->msg_id:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    const-string v2, "token"

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget v3, v3, Lcom/aee/sport/magicam/AeeApplication;->token:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    iget-object v2, p0, Lcom/aee/sport/magicam/bean/FileReceiveMsg;->param:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "param"

    iget-object v3, p0, Lcom/aee/sport/magicam/bean/FileReceiveMsg;->param:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/aee/sport/magicam/bean/FileReceiveMsg;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 62
    const-string v2, "type"

    iget-object v3, p0, Lcom/aee/sport/magicam/bean/FileReceiveMsg;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_1
    const-string v2, "offset"

    iget v3, p0, Lcom/aee/sport/magicam/bean/FileReceiveMsg;->offset:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    const-string v2, "fetch_size"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 74
    :goto_0
    return-object v2

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    const-string v2, ""

    goto :goto_0
.end method
