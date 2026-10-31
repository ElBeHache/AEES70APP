.class public Lcom/aee/sport/magicam/playback/PlayBackActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "PlayBackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aee/sport/magicam/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static checkDowns:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

.field private static fl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileContent;",
            ">;"
        }
    .end annotation
.end field

.field public static from:I

.field public static isDowns:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static localFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation
.end field

.field public static localRemoteFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private btnLocalNormal:Landroid/widget/ImageView;

.field private btnRemotePush:Landroid/widget/ImageView;

.field private checkAll:Landroid/widget/CheckBox;

.field private downFiles:Landroid/widget/ImageView;

.field private fileCheck:Landroid/widget/LinearLayout;

.field fname:Ljava/lang/String;

.field fturl:Ljava/lang/String;

.field furl:Ljava/lang/String;

.field private isLoading:Z

.field private listView:Landroid/widget/ListView;

.field private photo:Lcom/aee/sport/magicam/widget/MyRotationView;

.field position:I

.field protected remoteFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation
.end field

.field private typeSwitch:Lcom/aee/sport/magicam/widget/SlipButton;

.field private video:Lcom/aee/sport/magicam/widget/MyRotationView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    sput v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->from:I

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkDowns:Ljava/util/LinkedList;

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->isDowns:Ljava/util/LinkedList;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    .line 285
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fname:Ljava/lang/String;

    .line 286
    sget-object v0, Lcom/aee/sport/magicam/utils/Constants;->AMBA_URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->furl:Ljava/lang/String;

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fturl:Ljava/lang/String;

    .line 288
    const/4 v0, 0x0

    iput v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->position:I

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/playback/PlayBackActivity;Z)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->changeView(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/playback/PlayBackActivity;)Lcom/aee/sport/magicam/widget/MyRotationView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->photo:Lcom/aee/sport/magicam/widget/MyRotationView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/playback/PlayBackActivity;)Lcom/aee/sport/magicam/widget/MyRotationView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->video:Lcom/aee/sport/magicam/widget/MyRotationView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/aee/sport/magicam/playback/PlayBackActivity;Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->isLoading:Z

    return-void
.end method

.method private changeView(Z)V
    .locals 3
    .param p1, "type"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->photo:Lcom/aee/sport/magicam/widget/MyRotationView;

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/MyRotationView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->video:Lcom/aee/sport/magicam/widget/MyRotationView;

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/MyRotationView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fileCheck:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->typeSwitch:Lcom/aee/sport/magicam/widget/SlipButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/SlipButton;->setChecked(Z)V

    .line 204
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->btnRemotePush:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->btnLocalNormal:Landroid/widget/ImageView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aee/sport/magicam/playback/PlayBackActivity$3;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/playback/PlayBackActivity$3;-><init>(Lcom/aee/sport/magicam/playback/PlayBackActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 215
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aee/sport/magicam/playback/PlayBackActivity$4;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/playback/PlayBackActivity$4;-><init>(Lcom/aee/sport/magicam/playback/PlayBackActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 222
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 247
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->photo:Lcom/aee/sport/magicam/widget/MyRotationView;

    invoke-virtual {v0, v2}, Lcom/aee/sport/magicam/widget/MyRotationView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->video:Lcom/aee/sport/magicam/widget/MyRotationView;

    invoke-virtual {v0, v2}, Lcom/aee/sport/magicam/widget/MyRotationView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fileCheck:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->typeSwitch:Lcom/aee/sport/magicam/widget/SlipButton;

    invoke-virtual {v0, v1}, Lcom/aee/sport/magicam/widget/SlipButton;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->btnRemotePush:Landroid/widget/ImageView;

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object v0, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->btnLocalNormal:Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aee/sport/magicam/playback/PlayBackActivity$5;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/playback/PlayBackActivity$5;-><init>(Lcom/aee/sport/magicam/playback/PlayBackActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static delItem(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 412
    sget-object v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileContent;

    .line 413
    .local v0, "fc":Lcom/aee/sport/magicam/bean/FileContent;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    sget-object v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fl:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 415
    sget-object v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private getFiles()V
    .locals 4

    .prologue
    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->isLoading:Z

    .line 254
    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    sget v1, Lcom/aee/sport/magicam/utils/Constants;->AMBA_LS:I

    const-string v2, "/tmp/fuse_d/DCIM/100MEDIA"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v0, "sendMsg":Lcom/aee/sport/magicam/bean/SendMsg;
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v1

    new-instance v2, Lcom/aee/sport/magicam/playback/PlayBackActivity$6;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/PlayBackActivity$6;-><init>(Lcom/aee/sport/magicam/playback/PlayBackActivity;)V

    invoke-virtual {v1, v2, v0}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;Lcom/aee/sport/magicam/bean/SendMsg;)V

    .line 275
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/aee/sport/magicam/playback/PlayBackActivity$7;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/PlayBackActivity$7;-><init>(Lcom/aee/sport/magicam/playback/PlayBackActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 283
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 284
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 104
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->listView:Landroid/widget/ListView;

    .line 105
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/aee/sport/magicam/AeeApplication;->fileslist:Ljava/util/List;

    sput-object v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fl:Ljava/util/List;

    .line 106
    new-instance v1, Lcom/aee/sport/magicam/adapter/CustomAdapter;

    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fl:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/aee/sport/magicam/adapter/CustomAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 111
    const/high16 v1, 0x7f0c0000

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->fileCheck:Landroid/widget/LinearLayout;

    .line 113
    const v1, 0x7f0c0001

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkAll:Landroid/widget/CheckBox;

    .line 114
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkAll:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v1, 0x7f0c0002

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->downFiles:Landroid/widget/ImageView;

    .line 118
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->downFiles:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->listView:Landroid/widget/ListView;

    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    const v1, 0x7f0c0005

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/widget/MyRotationView;

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->photo:Lcom/aee/sport/magicam/widget/MyRotationView;

    .line 123
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->photo:Lcom/aee/sport/magicam/widget/MyRotationView;

    invoke-virtual {v1, v4}, Lcom/aee/sport/magicam/widget/MyRotationView;->setVisibility(I)V

    .line 124
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/widget/MyRotationView;

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->video:Lcom/aee/sport/magicam/widget/MyRotationView;

    .line 125
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->video:Lcom/aee/sport/magicam/widget/MyRotationView;

    invoke-virtual {v1, v4}, Lcom/aee/sport/magicam/widget/MyRotationView;->setVisibility(I)V

    .line 126
    const v1, 0x7f0c0086

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->btnRemotePush:Landroid/widget/ImageView;

    .line 127
    const v1, 0x7f0c0087

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->btnLocalNormal:Landroid/widget/ImageView;

    .line 128
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->btnRemotePush:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->btnLocalNormal:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->remoteFiles:Ljava/util/List;

    .line 141
    const v1, 0x7f0c0085

    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aee/sport/magicam/widget/SlipButton;

    iput-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->typeSwitch:Lcom/aee/sport/magicam/widget/SlipButton;

    .line 145
    sget v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->from:I

    if-nez v1, :cond_1

    .line 146
    invoke-direct {p0, v3}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->changeView(Z)V

    .line 152
    :goto_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/aee/sport/magicam/playback/PlayBackActivity$1;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/PlayBackActivity$1;-><init>(Lcom/aee/sport/magicam/playback/PlayBackActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 164
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 168
    iget-object v1, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->typeSwitch:Lcom/aee/sport/magicam/widget/SlipButton;

    new-instance v2, Lcom/aee/sport/magicam/playback/PlayBackActivity$2;

    invoke-direct {v2, p0}, Lcom/aee/sport/magicam/playback/PlayBackActivity$2;-><init>(Lcom/aee/sport/magicam/playback/PlayBackActivity;)V

    invoke-virtual {v1, v2}, Lcom/aee/sport/magicam/widget/SlipButton;->SetOnChangedListener(Lcom/aee/sport/magicam/widget/SlipButton$OnChangedListener;)V

    .line 176
    return-void

    .line 108
    :cond_0
    sget-object v1, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v1}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->getSelect()Ljava/util/LinkedList;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 148
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->changeView(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0800a3

    const v3, 0x7f0800a2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 291
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 408
    :goto_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onClick(Landroid/view/View;)V

    .line 409
    :goto_1
    return-void

    .line 294
    :sswitch_0
    sput v4, Lcom/aee/sport/magicam/playback/PlayBackActivity;->from:I

    .line 295
    sget v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->from:I

    if-nez v2, :cond_2

    .line 296
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-boolean v2, v2, Lcom/aee/sport/magicam/AeeApplication;->isConnect:Z

    if-nez v2, :cond_0

    .line 298
    invoke-static {v6, v4}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_1

    .line 301
    :cond_0
    iget-boolean v2, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->isLoading:Z

    if-eqz v2, :cond_1

    .line 303
    invoke-static {v3, v4}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_1

    .line 306
    :cond_1
    const-class v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->remoteFiles:Ljava/util/List;

    invoke-static {v3, v5}, Lcom/aee/sport/magicam/bean/FileAttr;->getSpecifiedFileAttr(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/aee/sport/magicam/AeeApplication;->files:Ljava/util/List;

    .line 308
    const-string v2, "type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 315
    :cond_2
    const-class v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 316
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    sget-object v3, Lcom/aee/sport/magicam/playback/PlayBackActivity;->localRemoteFiles:Ljava/util/List;

    iput-object v3, v2, Lcom/aee/sport/magicam/AeeApplication;->files:Ljava/util/List;

    .line 317
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 322
    :sswitch_1
    sput v4, Lcom/aee/sport/magicam/playback/PlayBackActivity;->from:I

    .line 323
    sget v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->from:I

    if-nez v2, :cond_5

    .line 324
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-boolean v2, v2, Lcom/aee/sport/magicam/AeeApplication;->isConnect:Z

    if-nez v2, :cond_3

    .line 326
    invoke-static {v6, v4}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_1

    .line 329
    :cond_3
    iget-boolean v2, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->isLoading:Z

    if-eqz v2, :cond_4

    .line 331
    invoke-static {v3, v4}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto :goto_1

    .line 334
    :cond_4
    const-class v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 335
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->remoteFiles:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/aee/sport/magicam/bean/FileAttr;->getSpecifiedFileAttr(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/aee/sport/magicam/AeeApplication;->files:Ljava/util/List;

    .line 336
    const-string v2, "type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 343
    :cond_5
    const-class v2, Lcom/aee/sport/magicam/playback/RemoteFileManagerActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 344
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getInstance()Lcom/aee/sport/magicam/AeeApplication;

    move-result-object v2

    sget-object v3, Lcom/aee/sport/magicam/playback/PlayBackActivity;->localFiles:Ljava/util/List;

    iput-object v3, v2, Lcom/aee/sport/magicam/AeeApplication;->files:Ljava/util/List;

    .line 345
    const-string v2, "type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v1}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 351
    :sswitch_2
    invoke-direct {p0, v5}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->changeView(Z)V

    goto/16 :goto_0

    .line 355
    :sswitch_3
    invoke-direct {p0, v4}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->changeView(Z)V

    goto/16 :goto_0

    .line 358
    :sswitch_4
    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkDowns:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 359
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkAll:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_7

    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->getSelect()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v0, v2, :cond_6

    .line 363
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkAll:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 371
    :goto_3
    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 361
    :cond_6
    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->getSelect()Ljava/util/LinkedList;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 365
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->getSelect()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v0, v2, :cond_8

    .line 369
    iget-object v2, p0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkAll:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 366
    :cond_8
    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v2}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->getSelect()Ljava/util/LinkedList;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkDowns:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 374
    .end local v0    # "i":I
    :sswitch_5
    sget-object v2, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkDowns:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-gtz v2, :cond_9

    .line 375
    const v2, 0x7f080014

    invoke-static {v2, v4}, Lcom/aee/sport/magicam/utils/MyToast;->showInfo(IZ)V

    goto/16 :goto_1

    .line 378
    :cond_9
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/playback/PlayBackActivity$8;-><init>(Lcom/aee/sport/magicam/playback/PlayBackActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 404
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 292
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0001 -> :sswitch_4
        0x7f0c0002 -> :sswitch_5
        0x7f0c0004 -> :sswitch_0
        0x7f0c0006 -> :sswitch_1
        0x7f0c0086 -> :sswitch_2
        0x7f0c0087 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->setContentView(I)V

    .line 93
    invoke-direct {p0}, Lcom/aee/sport/magicam/playback/PlayBackActivity;->init()V

    .line 95
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/aee/sport/magicam/AeeApplication;->checkViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 100
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onDestroy()V

    .line 101
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->getSelect()Ljava/util/LinkedList;

    move-result-object v1

    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->getSelect()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->getSelect()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkDowns:Ljava/util/LinkedList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_1
    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->cusAdapter:Lcom/aee/sport/magicam/adapter/CustomAdapter;

    invoke-virtual {v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter;->notifyDataSetChanged()V

    .line 190
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    sget-object v0, Lcom/aee/sport/magicam/playback/PlayBackActivity;->checkDowns:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
