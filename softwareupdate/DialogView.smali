.class public Lcom/aee/sport/magicam/softwareupdate/DialogView;
.super Landroid/app/Dialog;
.source "DialogView.java"


# instance fields
.field private cancel:Landroid/widget/Button;

.field private dialogInfo:Landroid/widget/TextView;

.field private dialogTitle:Landroid/widget/TextView;

.field private height:I

.field private ok:Landroid/widget/Button;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .param p3, "type"    # I
    .param p4, "title"    # I
    .param p5, "info"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 37
    const v4, 0x7f070015

    invoke-direct {p0, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    invoke-virtual {p0, v8}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setCanceledOnTouchOutside(Z)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030012

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 40
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0c0047

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 41
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    const v4, 0x7f0c0046

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogTitle:Landroid/widget/TextView;

    .line 44
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogTitle:Landroid/widget/TextView;

    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(I)V

    .line 45
    const v4, 0x7f0c0048

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogInfo:Landroid/widget/TextView;

    .line 46
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogInfo:Landroid/widget/TextView;

    invoke-virtual {v4, p5}, Landroid/widget/TextView;->setText(I)V

    .line 47
    const v4, 0x7f0c004a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    .line 48
    const v4, 0x7f0c0049

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    .line 50
    packed-switch p3, :pswitch_data_0

    .line 68
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    :goto_0
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0, v2}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setContentView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 78
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 79
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->getDensity(Landroid/content/Context;)V

    .line 80
    iget v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->width:I

    iget v5, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->height:I

    if-ge v4, v5, :cond_0

    .line 81
    iget v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->width:I

    mul-int/lit8 v4, v4, 0x8

    div-int/lit8 v4, v4, 0xa

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 84
    :goto_1
    const/4 v4, -0x2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 85
    const/16 v4, 0x11

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 86
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 88
    invoke-virtual {p0}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->show()V

    .line 90
    return-void

    .line 52
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "window":Landroid/view/Window;
    :pswitch_0
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 57
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 61
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 64
    :pswitch_3
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 83
    .restart local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "window":Landroid/view/Window;
    :cond_0
    iget v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->width:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .param p3, "viewItem"    # Landroid/view/View;
    .param p4, "type"    # I
    .param p5, "title"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 104
    const v4, 0x7f070015

    invoke-direct {p0, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 105
    invoke-virtual {p0, v8}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setCanceledOnTouchOutside(Z)V

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030012

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 107
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0c0047

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 108
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    const v4, 0x7f0c0046

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogTitle:Landroid/widget/TextView;

    .line 111
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogTitle:Landroid/widget/TextView;

    invoke-virtual {v4, p5}, Landroid/widget/TextView;->setText(I)V

    .line 112
    const v4, 0x7f0c0048

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogInfo:Landroid/widget/TextView;

    .line 113
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    const v4, 0x7f0c004a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    .line 115
    const v4, 0x7f0c0049

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    .line 117
    packed-switch p4, :pswitch_data_0

    .line 135
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    :goto_0
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0, v2}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->setContentView(Landroid/view/View;)V

    .line 144
    invoke-virtual {p0}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 145
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 146
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, p1}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->getDensity(Landroid/content/Context;)V

    .line 147
    iget v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->width:I

    iget v5, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->height:I

    if-ge v4, v5, :cond_0

    .line 148
    iget v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->width:I

    mul-int/lit8 v4, v4, 0x8

    div-int/lit8 v4, v4, 0xa

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 151
    :goto_1
    const/4 v4, -0x2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 152
    const/16 v4, 0x11

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 153
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 155
    invoke-virtual {p0}, Lcom/aee/sport/magicam/softwareupdate/DialogView;->show()V

    .line 157
    return-void

    .line 119
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "window":Landroid/view/Window;
    :pswitch_0
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 150
    .restart local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "window":Landroid/view/Window;
    :cond_0
    iget v4, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->width:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDensity(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 166
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 167
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->width:I

    .line 168
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->height:I

    .line 170
    return-void
.end method


# virtual methods
.method public setCancelString(I)V
    .locals 1
    .param p1, "cancelStr"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public setCancelString(Ljava/lang/String;)V
    .locals 1
    .param p1, "cancelStr"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_0
    return-void
.end method

.method public setInfo(I)V
    .locals 1
    .param p1, "info"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_0
    return-void
.end method

.method public setOkString(I)V
    .locals 1
    .param p1, "okStr"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public setOkString(Ljava/lang/String;)V
    .locals 1
    .param p1, "okStr"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->ok:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/aee/sport/magicam/softwareupdate/DialogView;->dialogTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    return-void
.end method
