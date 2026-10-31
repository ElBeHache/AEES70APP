.class Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;
.super Ljava/lang/Object;
.source "SelectNormalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getBaseInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;)Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 89
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 90
    sget-object v4, Lcom/aee/sport/magicam/parseconfig/ParseConfig;->ConfigHash:Ljava/util/HashMap;

    .line 91
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;>;"
    const/4 v1, 0x0

    .line 93
    .local v1, "ckv":Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
    :try_start_0
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$2(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 309
    :pswitch_0
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "\u754c\u9762\u672a\u8bbe\u8ba11"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    const-string v8, "\u754c\u9762\u672a\u8bbe\u8ba12"

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "\u754c\u9762\u672a\u8bbe\u8ba13"

    aput-object v8, v5, v6

    .line 310
    .local v5, "system1":[Ljava/lang/String;
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6, v5}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v5    # "system1":[Ljava/lang/String;
    :goto_0
    :pswitch_1
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6, v7}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    .line 318
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v6, v6, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1$1;

    invoke-direct {v7, p0}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1$1;-><init>(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void

    .line 95
    :pswitch_2
    :try_start_1
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_3
    :try_start_2
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f090000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_4
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_5
    const-string v6, "video_resolution"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    move-object v1, v0

    .line 105
    if-nez v1, :cond_0

    .line 106
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 107
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 110
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->permission:Ljava/lang/String;

    const-string v10, "settable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v8, v7

    :cond_1
    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 115
    :pswitch_6
    const-string v6, "video_fov"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    move-object v1, v0

    .line 116
    if-nez v1, :cond_2

    .line 117
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 118
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 119
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 121
    :cond_2
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 122
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 123
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090008

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$15(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 124
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v3, v6, :cond_4

    .line 135
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->permission:Ljava/lang/String;

    const-string v10, "settable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v8, v7

    :cond_3
    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 125
    :cond_4
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "wid"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 126
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    .line 124
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    :cond_6
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "med"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 128
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto :goto_2

    .line 129
    :cond_7
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "nar"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 130
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto :goto_2

    .line 131
    :cond_8
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "zom"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 132
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto :goto_2

    .line 140
    .end local v3    # "i":I
    :pswitch_7
    const-string v6, "photo_size"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    move-object v1, v0

    .line 141
    if-nez v1, :cond_9

    .line 142
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 143
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 145
    :cond_9
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 146
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->permission:Ljava/lang/String;

    const-string v10, "settable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v8, v7

    :cond_a
    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 151
    :pswitch_8
    const-string v6, "photo_shot_mode"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    move-object v1, v0

    .line 152
    if-nez v1, :cond_b

    .line 153
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090017

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 154
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 155
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 157
    :cond_b
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 158
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 159
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v3, v6, :cond_d

    .line 162
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->permission:Ljava/lang/String;

    const-string v10, "settable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    move v8, v7

    :cond_c
    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 160
    :cond_d
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    iget-object v10, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v10}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v3

    const-string v11, "shot"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    iget-object v11, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v11}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    const-string v12, "shot"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x7

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v3

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 171
    .end local v3    # "i":I
    :pswitch_9
    const-string v6, "setup_key_tone"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    move-object v1, v0

    .line 172
    if-nez v1, :cond_e

    .line 173
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090022

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 174
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090023

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 175
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 177
    :cond_e
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 178
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 179
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090022

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$15(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 180
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v3, v6, :cond_10

    .line 189
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->permission:Ljava/lang/String;

    const-string v10, "settable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move v8, v7

    :cond_f
    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 181
    :cond_10
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "off"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 182
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    .line 180
    :cond_11
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 183
    :cond_12
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "med"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 184
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto :goto_5

    .line 185
    :cond_13
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "sta"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 186
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto :goto_5

    .line 194
    .end local v3    # "i":I
    :pswitch_a
    const-string v6, "setup_selflamp"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    move-object v1, v0

    .line 195
    if-nez v1, :cond_14

    .line 196
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 197
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090025

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 198
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 200
    :cond_14
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 201
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090024

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$15(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 203
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v3, v6, :cond_16

    .line 212
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->permission:Ljava/lang/String;

    const-string v10, "settable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    move v8, v7

    :cond_15
    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 204
    :cond_16
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "off"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 205
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    .line 203
    :cond_17
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 206
    :cond_18
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "on2"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 207
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto :goto_7

    .line 208
    :cond_19
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "on"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 209
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto :goto_7

    .line 219
    .end local v3    # "i":I
    :pswitch_b
    const-string v6, "setup_system_type"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    move-object v1, v0

    .line 220
    if-nez v1, :cond_1a

    .line 221
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09002c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 222
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09002d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 223
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 225
    :cond_1a
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 226
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 227
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v3, v6, :cond_1c

    .line 234
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->permission:Ljava/lang/String;

    const-string v10, "settable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    move v8, v7

    :cond_1b
    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 228
    :cond_1c
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "pal"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 229
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/aee/sport/magicam/utils/Params;->VIDEO_STANDARD_DIS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    .line 227
    :cond_1d
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 230
    :cond_1e
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "nts"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 231
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/aee/sport/magicam/utils/Params;->VIDEO_STANDARD_DIS:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto :goto_9

    .line 239
    .end local v3    # "i":I
    :pswitch_c
    const-string v6, "language"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;

    move-object v1, v0

    .line 240
    if-nez v1, :cond_1f

    .line 241
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09003c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 242
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v8, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09003d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 243
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 245
    :cond_1f
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$14(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 246
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$12(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 247
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-virtual {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09003c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$15(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;[Ljava/lang/String;)V

    .line 248
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v3, v6, :cond_20

    .line 302
    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    iget-object v6, v1, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->permission:Ljava/lang/String;

    const-string v10, "settable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    move v6, v7

    :goto_b
    invoke-static {v9, v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$13(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;Z)V

    goto/16 :goto_0

    .line 249
    :cond_20
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "chs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 250
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    .line 248
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 251
    :cond_21
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "cht"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 252
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto :goto_c

    .line 253
    :cond_22
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "eng"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 254
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto :goto_c

    .line 255
    :cond_23
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "ger"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 256
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto :goto_c

    .line 257
    :cond_24
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "fre"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 258
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 259
    :cond_25
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "ita"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 260
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 261
    :cond_26
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "spa"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 262
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 263
    :cond_27
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "por"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 264
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x9

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 265
    :cond_28
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "rus"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 266
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 267
    :cond_29
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "jap"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 268
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 269
    :cond_2a
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "kor"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 270
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x13

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 271
    :cond_2b
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "cze"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 272
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x15

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 273
    :cond_2c
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "gre"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 274
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x11

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 275
    :cond_2d
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "dut"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 276
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xa

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 277
    :cond_2e
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "tur"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 278
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xb

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 279
    :cond_2f
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "hun"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 280
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xc

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 281
    :cond_30
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "dan"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 282
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xd

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 283
    :cond_31
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "fin"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 284
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xe

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 285
    :cond_32
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "nor"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 286
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xf

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 287
    :cond_33
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "swe"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 288
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 289
    :cond_34
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "pol"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 290
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x12

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 291
    :cond_35
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "ukr"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 292
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x14

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 293
    :cond_36
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "rom"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 294
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x16

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 295
    :cond_37
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v9, "svk"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 296
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$16(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x17

    aget-object v9, v9, v10

    aput-object v9, v6, v3

    goto/16 :goto_c

    .line 299
    :cond_38
    iget-object v6, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v6}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$4(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity$1;->this$0:Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;

    invoke-static {v9}, Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;->access$6(Lcom/aee/sport/magicam/capturesetting/SelectNormalActivity;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    aput-object v9, v6, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_c

    :cond_39
    move v6, v8

    .line 302
    goto/16 :goto_b

    .line 93
    :pswitch_data_0
    .packed-switch 0x8003
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_1
    .end packed-switch
.end method
