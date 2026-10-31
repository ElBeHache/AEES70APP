.class public Lcom/aee/sport/magicam/setting/CMDTestActivity;
.super Lcom/aee/sport/magicam/BaseActivity;
.source "CMDTestActivity.java"


# instance fields
.field df:Ljava/text/SimpleDateFormat;

.field isRun:Z

.field private list:Landroid/widget/ListView;

.field private msgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/SendMsg;",
            ">;"
        }
    .end annotation
.end field

.field private showInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/aee/sport/magicam/BaseActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->isRun:Z

    .line 324
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->df:Ljava/text/SimpleDateFormat;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/setting/CMDTestActivity;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity;->takePhoto()V

    return-void
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/setting/CMDTestActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/setting/CMDTestActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->showInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method private autoTakePhoto()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aee/sport/magicam/setting/CMDTestActivity$1;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$1;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    return-void
.end method

.method private getNowTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->df:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 12

    .prologue
    const/16 v11, 0x13

    const/16 v9, 0x12

    const/4 v3, 0x0

    .line 104
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/CMDTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->showInfo:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/CMDTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->list:Landroid/widget/ListView;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v1, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v2, "\u5f00\u59cb\u4f1a\u8bdd"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v1, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v2, "\u505c\u6b62\u4f1a\u8bdd"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v1, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v2, "\u5f00\u59cb\u5f55\u50cf"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v1, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v2, "\u505c\u6b62\u5f55\u50cf"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v1, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v2, "\u62cd\u7167"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v1, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v2, "\u505c\u6b62\u8fde\u62cd"

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u67e5\u770bSD\u5361\u6587\u4ef6"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_LS:I

    const/4 v5, 0x6

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u4ea7\u54c1\u4fe1\u606f"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "get_dv_info"

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u5ba2\u5236\u5316\u673a\u578b"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "get_dv_pid"

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "WIFI\u6a21\u5757\u4fe1\u606f"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "get_wifi_kit"

    const/16 v5, 0x9

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u7535\u6c60\u4fe1\u606f"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "get_dv_bat"

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u6587\u4ef6\u7cfb\u7edf\u4fe1\u606f"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "get_dv_fs"

    const/16 v5, 0xb

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u6a21\u5f0f\u4fe1\u606f"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "get_dv_mode"

    const/16 v5, 0xc

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u5f55\u50cf\u8ba1\u65f6"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "video_time"

    const/16 v5, 0xd

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u5f55\u50cf\u72b6\u6001"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "get_video_state"

    const/16 v5, 0xe

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u5f00\u673a\u72b6\u6001"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "get_dv_config"

    const/16 v5, 0xf

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u5de5\u4f5c\u72b6\u6001"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "get_dv_state"

    const/16 v5, 0x10

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u83b7\u53d6\u76f8\u673a\u65f6\u95f4"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "camera_clock"

    const/16 v5, 0x11

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v4, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v5, "\u8bbe\u7f6e\u76f8\u673a\u65f6\u95f4\u4e3a 2015-01-01 00:00:00"

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_SET_SETTING:I

    const-string v7, "2015-01-01 00:00:00"

    const-string v8, "camera_clock"

    invoke-direct/range {v4 .. v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v4, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v5, "\u83b7\u53d6\u4e3b\u673a\u62cd\u7167\u53c2\u6570  \u914d\u7f6e"

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SINGLE_SETTING_OPTIONS:I

    const-string v7, "photo_size"

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u83b7\u53d6\u4e3b\u673a\u62cd\u7167\u53c2\u6570"

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "photo_size"

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v4, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v5, "\u83b7\u53d6\u4e3b\u673a\u89c6\u9891\u53c2\u6570  \u914d\u7f6e"

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SINGLE_SETTING_OPTIONS:I

    const-string v7, "video_resolution"

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u83b7\u53d6\u4e3b\u673a\u89c6\u9891\u53c2\u6570  "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "video_resolution"

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v4, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v5, "\u83b7\u53d6\u4e3b\u673a\u65f6\u949f  \u914d\u7f6e"

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SINGLE_SETTING_OPTIONS:I

    const-string v7, "camera_clock"

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u83b7\u53d6\u4e3b\u673a\u65f6\u949f  "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "camera_clock"

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v4, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v5, "\u83b7\u53d6\u4e3b\u673a\u89c6\u9891\u683c\u5f0f  \u914d\u7f6e"

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SINGLE_SETTING_OPTIONS:I

    const-string v7, "setup_system_type"

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u83b7\u53d6\u4e3b\u673a\u89c6\u9891\u683c\u5f0f  "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "setup_system_type"

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v4, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v5, "\u83b7\u53d6\u4e3b\u673aapp\u72b6\u6001   \u914d\u7f6e"

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SINGLE_SETTING_OPTIONS:I

    const-string v7, "app status"

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u83b7\u53d6\u4e3b\u673aapp\u72b6\u6001   "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "app status"

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v4, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v5, "\u7801\u6d41\u8f93\u51fa\u53c2\u6570    \u914d\u7f6e"

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SINGLE_SETTING_OPTIONS:I

    const-string v7, "stream_out_type"

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u7801\u6d41\u8f93\u51fa\u53c2\u6570    "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "stream_out_type"

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v4, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v5, "\u89c6\u9891\u65f6\u95f4\u6233\u5f00\u5173\u53c2\u6570    \u914d\u7f6e"

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SINGLE_SETTING_OPTIONS:I

    const-string v7, "video_stamp"

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u89c6\u9891\u65f6\u95f4\u6233\u5f00\u5173\u53c2\u6570    "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "video_stamp"

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v4, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v5, "\u7167\u7247\u65f6\u95f4\u6233    \u914d\u7f6e"

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SINGLE_SETTING_OPTIONS:I

    const-string v7, "video_stamp"

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u7167\u7247\u65f6\u95f4\u6233    "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "video_stamp"

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v4, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v5, " \u7167\u7247\u8d28\u91cf    \u914d\u7f6e"

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SINGLE_SETTING_OPTIONS:I

    const-string v7, "photo_quality"

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, " \u7167\u7247\u8d28\u91cf    "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "photo_quality"

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v4, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v5, "\u5feb\u62cd\u8bbe\u7f6e\u5217\u8868    \u914d\u7f6e"

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SINGLE_SETTING_OPTIONS:I

    const-string v7, "photo_shot_mode"

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u5feb\u62cd\u8bbe\u7f6e\u5217\u8868   "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "photo_shot_mode"

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v4, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v5, "\u81ea\u52a8\u6301\u7eed\u8fde\u62cd    \u914d\u7f6e"

    sget v6, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SINGLE_SETTING_OPTIONS:I

    const-string v7, "photo_tlm"

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v6, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    new-instance v0, Lcom/aee/sport/magicam/bean/SendMsg;

    const-string v1, "\u81ea\u52a8\u6301\u7eed\u8fde\u62cd  "

    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_GET_SETTING:I

    const-string v4, "photo_tlm"

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/aee/sport/magicam/bean/SendMsg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v10, Lcom/aee/sport/magicam/adapter/CMDAdapter;

    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->msgList:Ljava/util/List;

    invoke-direct {v10, p0, v0}, Lcom/aee/sport/magicam/adapter/CMDAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 169
    .local v10, "adapter":Lcom/aee/sport/magicam/adapter/CMDAdapter;
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/aee/sport/magicam/setting/CMDTestActivity$3;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$3;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 322
    return-void
.end method

.method private takePhoto()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v0

    new-instance v1, Lcom/aee/sport/magicam/setting/CMDTestActivity$2;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$2;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity;)V

    .line 99
    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AMBA_TAKE_PHOTO:I

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 332
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 357
    :goto_0
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    return v2

    .line 334
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity;->getNowTime()Ljava/lang/String;

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

    .line 335
    .local v1, "sendMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->showInfo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->showInfo:Landroid/widget/TextView;

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

    .line 336
    iget-object v2, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/aee/sport/magicam/setting/CMDTestActivity$4;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$4;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 346
    .end local v1    # "sendMsg":Ljava/lang/String;
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity;->getNowTime()Ljava/lang/String;

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

    .line 347
    .local v0, "receiveMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->showInfo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->showInfo:Landroid/widget/TextView;

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

    .line 348
    iget-object v2, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/aee/sport/magicam/setting/CMDTestActivity$5;

    invoke-direct {v3, p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity$5;-><init>(Lcom/aee/sport/magicam/setting/CMDTestActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x800b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/aee/sport/magicam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/setting/CMDTestActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/aee/sport/magicam/setting/CMDTestActivity;->initView()V

    .line 53
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->isRun:Z

    .line 67
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onPause()V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aee/sport/magicam/setting/CMDTestActivity;->isRun:Z

    .line 61
    invoke-super {p0}, Lcom/aee/sport/magicam/BaseActivity;->onResume()V

    .line 62
    return-void
.end method
