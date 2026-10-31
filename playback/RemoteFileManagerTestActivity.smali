.class public Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "RemoteFileManagerTestActivity.java"


# instance fields
.field private adapter:Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;

.field private currentPath:Ljava/lang/String;

.field df:Ljava/text/SimpleDateFormat;

.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;

.field private showInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    .line 43
    const-string v0, "/"

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->currentPath:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->df:Ljava/text/SimpleDateFormat;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->files:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->cd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->deleterFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->getFiles()V

    return-void
.end method

.method static synthetic access$4(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->showInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method private cd(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v1, Lcom/aee/sport/magicam/utils/Constants;->AMBA_CD:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$5;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$5;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 175
    return-void
.end method

.method private deleterFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v1, Lcom/aee/sport/magicam/utils/Constants;->AMBA_DEL_FILE:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$4;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$4;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 156
    return-void
.end method

.method private getFiles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v1, Lcom/aee/sport/magicam/utils/Constants;->AMBA_LS:I

    invoke-direct {v0, v1, v2, v2}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$3;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$3;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 131
    return-void
.end method

.method private getNowTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->df:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 55
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->showInfo:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->list:Landroid/widget/ListView;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->files:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;

    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->files:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->adapter:Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;

    .line 60
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->adapter:Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$1;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$1;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$2;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 98
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->getFiles()V

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 200
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 228
    :goto_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    return v2

    .line 202
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->getNowTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \u53d1\u9001\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "sendMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->showInfo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->showInfo:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$6;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$6;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 214
    .end local v1    # "sendMsg":Ljava/lang/String;
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->getNowTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \u63a5\u6536\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "receiveMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->showInfo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->showInfo:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$7;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity$7;-><init>(Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 225
    .end local v0    # "receiveMsg":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->adapter:Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/adapter/RemoteFileTestAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x800b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onClick(Landroid/view/View;)V

    .line 196
    return-void

    .line 181
    :pswitch_0
    const-string v0, "../"

    invoke-direct {p0, v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->cd(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :pswitch_1
    const-string v0, "/"

    invoke-direct {p0, v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->cd(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :pswitch_2
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->getFiles()V

    goto :goto_0

    .line 190
    :pswitch_3
    const-string v0, "/tmp/fuse_d/DCIM/100MEDIA"

    invoke-direct {p0, v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->cd(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c002f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/RemoteFileManagerTestActivity;->initView()V

    .line 51
    return-void
.end method
