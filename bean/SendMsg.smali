.class public Lcom/aee/sport/magicam/bean/SendMsg;
.super Ljava/lang/Object;
.source "SendMsg.java"


# instance fields
.field public NO:I

.field public msgName:Ljava/lang/String;

.field public msg_id:I

.field public param:Ljava/lang/String;

.field public param_size:I

.field public token:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "msg_id"    # I
    .param p2, "token"    # I
    .param p3, "param_size"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msg_id:I

    .line 119
    iput p2, p0, Lcom/aee/sport/magicam/bean/SendMsg;->token:I

    .line 120
    iput p3, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param_size:I

    .line 121
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "msg_id"    # I
    .param p2, "token"    # I
    .param p3, "param"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msg_id:I

    .line 157
    iput p2, p0, Lcom/aee/sport/magicam/bean/SendMsg;->token:I

    .line 158
    iput-object p3, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param:Ljava/lang/String;

    .line 159
    iput-object p4, p0, Lcom/aee/sport/magicam/bean/SendMsg;->type:Ljava/lang/String;

    .line 160
    if-eqz p3, :cond_0

    .line 161
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param_size:I

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param_size:I

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg_id"    # I
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msg_id:I

    .line 104
    iput-object p2, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/aee/sport/magicam/bean/SendMsg;->type:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "msgName"    # Ljava/lang/String;
    .param p2, "msg_id"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msgName:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msg_id:I

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "msgName"    # Ljava/lang/String;
    .param p2, "msg_id"    # I
    .param p3, "token"    # I
    .param p4, "param"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "param_size"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msgName:Ljava/lang/String;

    .line 86
    iput p2, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msg_id:I

    .line 87
    iput p3, p0, Lcom/aee/sport/magicam/bean/SendMsg;->token:I

    .line 88
    iput-object p4, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/aee/sport/magicam/bean/SendMsg;->type:Ljava/lang/String;

    .line 90
    iput p6, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param_size:I

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "msgName"    # Ljava/lang/String;
    .param p2, "msg_id"    # I
    .param p3, "param"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "NO"    # I

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msgName:Ljava/lang/String;

    .line 138
    iput p2, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msg_id:I

    .line 139
    iput-object p3, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param:Ljava/lang/String;

    .line 140
    iput-object p4, p0, Lcom/aee/sport/magicam/bean/SendMsg;->type:Ljava/lang/String;

    .line 141
    iput p5, p0, Lcom/aee/sport/magicam/bean/SendMsg;->NO:I

    .line 142
    return-void
.end method


# virtual methods
.method public getMsgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msgName:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg_id()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msg_id:I

    return v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getParam_size()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param_size:I

    return v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/aee/sport/magicam/bean/SendMsg;->token:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/SendMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgName"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msgName:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setMsg_id(I)V
    .locals 0
    .param p1, "msg_id"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msg_id:I

    .line 174
    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setParam_size(I)V
    .locals 0
    .param p1, "param_size"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param_size:I

    .line 214
    return-void
.end method

.method public setToken(I)V
    .locals 0
    .param p1, "token"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->token:I

    .line 182
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->type:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 229
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "msg_id"

    iget v3, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msg_id:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget v2, v2, Lcom/aee/sport/magicam/AeeApplication;->token:I

    const/16 v3, -0x3e8

    if-ne v2, v3, :cond_0

    .line 231
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Lcom/aee/sport/magicam/AeeApplication;->token:I

    .line 233
    :cond_0
    const-string v2, "token"

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v3

    iget v3, v3, Lcom/aee/sport/magicam/AeeApplication;->token:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    const-string v2, "param_size"

    iget v3, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param_size:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 235
    iget-object v2, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 237
    const-string v2, "param"

    iget-object v3, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/aee/sport/magicam/bean/SendMsg;->type:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 244
    const-string v2, "type"

    iget-object v3, p0, Lcom/aee/sport/magicam/bean/SendMsg;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toSpecialJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 262
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 264
    .local v2, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "msg_id"

    iget v4, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msg_id:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 265
    const-string v3, "token"

    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v4

    iget v4, v4, Lcom/aee/sport/magicam/AeeApplication;->token:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    const-string v3, "param_size"

    iget v4, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param_size:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    iget-object v3, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 269
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 270
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 271
    const-string v3, "param"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    iget-object v3, p0, Lcom/aee/sport/magicam/bean/SendMsg;->type:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 278
    const-string v3, "type"

    iget-object v4, p0, Lcom/aee/sport/magicam/bean/SendMsg;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 282
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SendMsg [msgName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->msg_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->token:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aee/sport/magicam/bean/SendMsg;->param_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
