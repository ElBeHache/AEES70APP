.class public Lcom/aee/sport/magicam/utils/ResolveJson;
.super Ljava/lang/Object;
.source "ResolveJson.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRval(Ljava/lang/Object;I)Z
    .locals 6
    .param p0, "receiveMsg"    # Ljava/lang/Object;
    .param p1, "msg_id"    # I

    .prologue
    const/4 v3, 0x0

    .line 71
    if-nez p0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v3

    .line 78
    :cond_1
    :try_start_0
    instance-of v4, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    if-eqz v4, :cond_2

    .line 79
    move-object v0, p0

    check-cast v0, Lcom/aee/sport/magicam/bean/ReceiveMsg;

    move-object v2, v0

    .line 80
    .local v2, "msg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    invoke-virtual {v2}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v4

    const/4 v5, -0x4

    if-ne v4, v5, :cond_0

    .line 85
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/aee/sport/magicam/service/ControlCMD;->startSesstion(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v2    # "msg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p0, "array"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static resolveNormalInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "jsonstr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/aee/sport/magicam/utils/ResolveJson;->getClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    const/4 v1, 0x0

    goto :goto_0
.end method
