.class public Lcom/aee/sport/magicam/parseconfig/ParseConfig;
.super Ljava/lang/Object;
.source "ParseConfig.java"


# static fields
.field public static ConfigHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private static mSocketClient:Lcom/aee/sport/magicam/parseconfig/ParseConfig;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isparsing:Z

.field private mConfigThread:Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    .line 18
    sput-object v0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->mSocketClient:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "ParseConfig"

    iput-object v0, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->mConfigThread:Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->isparsing:Z

    .line 12
    return-void
.end method

.method public static Client()Lcom/aee/sport/magicam/parseconfig/ParseConfig;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->mSocketClient:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    invoke-direct {v0}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;-><init>()V

    sput-object v0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->mSocketClient:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    .line 24
    :cond_0
    sget-object v0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->mSocketClient:Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    return-object v0
.end method

.method private productConfig()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 51
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u751f\u6210\u914d\u7f6e\u6587\u4ef6"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_ALL_CURRENT_SETTINGS:I

    const/16 v5, 0x15

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 52
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/bean/SendMsg;)Lcom/aee/sport/magicam/bean/ReceiveMsg;

    move-result-object v6

    .line 53
    .local v6, "receiveMsg":Lcom/aee/sport/magicam/bean/ReceiveMsg;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/aee/sport/magicam/bean/ReceiveMsg;->getRval()I

    move-result v1

    if-ltz v1, :cond_0

    .line 54
    const/4 v1, 0x1

    .line 56
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parseConfig(Ljava/lang/String;)V
    .locals 13
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 76
    const-string v8, "\n"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "arrayOfString":[Ljava/lang/String;
    const-string v8, "ParseConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " arrayOfString.length = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    array-length v8, v0

    if-lez v8, :cond_0

    .line 80
    sget-object v8, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 81
    const/4 v1, -0x1

    .line 82
    .local v1, "i1":I
    const/4 v2, 0x0

    .line 84
    .local v2, "i2":I
    :goto_0
    array-length v8, v0

    if-lt v2, v8, :cond_1

    .line 161
    iput-boolean v12, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->isparsing:Z

    .line 163
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    :cond_0
    const-string v9, "ParseConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v8, "--- dataRes= "

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    const-string v11, "video_resolution"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    iget-object v8, v8, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    aget-object v8, v8, v12

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 87
    .restart local v1    # "i1":I
    .restart local v2    # "i2":I
    :cond_1
    new-instance v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    invoke-direct {v6, p0}, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;-><init>(Lcom/aee/sport/magicam/parseconfig/ParseConfig;)V

    .line 88
    .local v6, "localh2":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    aget-object v7, v0, v2

    .line 89
    .local v7, "str1":Ljava/lang/String;
    const-string v8, "ParseConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "typeStr = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "--- length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 92
    new-instance v5, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    invoke-direct {v5, p0}, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;-><init>(Lcom/aee/sport/magicam/parseconfig/ParseConfig;)V

    .line 93
    .local v5, "localh1":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    iput-object v7, v5, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->name:Ljava/lang/String;

    .line 94
    iput-boolean v12, v5, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->e:Z

    .line 95
    sget-object v8, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    iget-object v9, v5, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    const/4 v1, 0x1

    .line 102
    .end local v5    # "localh1":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    :cond_2
    :goto_1
    aget-object v7, v0, v2

    .line 103
    const-string v8, "ParseConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Str1 = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "--- length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 106
    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->e:Z

    .line 108
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 110
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 111
    .local v3, "i3":I
    invoke-virtual {v7, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->name:Ljava/lang/String;

    .line 112
    const-string v8, "SocketClient"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "data.name = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 114
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 115
    :cond_3
    const-string v8, "SocketClient"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "data.stateVal = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 117
    const-string v8, "manfacturer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "module"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 118
    :cond_4
    sget-object v8, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    iget-object v9, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    goto/16 :goto_0

    .line 124
    .end local v3    # "i3":I
    :cond_5
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 126
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 127
    .restart local v3    # "i3":I
    invoke-virtual {v7, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->name:Ljava/lang/String;

    .line 128
    const-string v8, "SocketClient"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "data.name = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 130
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 131
    :cond_6
    const-string v8, "SocketClient"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "data.stateVal = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v8, "version"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 133
    sget-object v8, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    iget-object v9, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 136
    goto/16 :goto_0

    .line 139
    .end local v3    # "i3":I
    :cond_8
    const-string v8, "options"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 141
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    .line 143
    const/4 v4, 0x0

    .local v4, "i5":I
    :goto_2
    iget-object v8, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    array-length v8, v8

    if-lt v4, v8, :cond_9

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 144
    :cond_9
    iget-object v8, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    iget-object v9, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    aget-object v9, v9, v4

    aput-object v9, v8, v4

    .line 145
    const-string v8, "ParseConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "--- config options = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 149
    .end local v4    # "i5":I
    :cond_a
    const-string v8, "permission"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 151
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->permission:Ljava/lang/String;

    .line 152
    const-string v8, "ParseConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "data.permission = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " data.name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v8, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    iget-object v9, v6, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public resetConfigThread()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->mConfigThread:Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->mConfigThread:Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->a()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->mConfigThread:Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;

    .line 66
    :cond_0
    return-void
.end method

.method public startConfigThread()V
    .locals 4

    .prologue
    .line 29
    sget-object v2, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    .line 31
    :cond_0
    sget-object v2, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "flag":Z
    :cond_1
    invoke-direct {p0}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->productConfig()Z

    move-result v1

    .line 36
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->resetConfigThread()V

    .line 43
    new-instance v2, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;-><init>(Lcom/aee/sport/magicam/parseconfig/ParseConfig;)V

    iput-object v2, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->mConfigThread:Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;

    .line 44
    iget-object v2, p0, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->mConfigThread:Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/parseconfig/ParseConfigThread;->start()V

    .line 45
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
