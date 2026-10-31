.class public Lcom/aee/sport/magicam/widget/MyProgressDialog;
.super Landroid/app/Dialog;
.source "MyProgressDialog.java"


# instance fields
.field private hyperspaceJumpAnimation:Landroid/view/animation/Animation;

.field private spaceshipImage:Landroid/widget/ImageView;

.field private tipTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    .line 30
    const v3, 0x7f070016

    invoke-direct {p0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 32
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030013

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 33
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f0c0047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 35
    .local v1, "layout":Landroid/widget/LinearLayout;
    const v3, 0x7f0c004b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/aee/sport/magicam/widget/MyProgressDialog;->spaceshipImage:Landroid/widget/ImageView;

    .line 36
    const v3, 0x7f0c004c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/aee/sport/magicam/widget/MyProgressDialog;->tipTextView:Landroid/widget/TextView;

    .line 39
    const v3, 0x7f040003

    .line 38
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/aee/sport/magicam/widget/MyProgressDialog;->hyperspaceJumpAnimation:Landroid/view/animation/Animation;

    .line 41
    iget-object v3, p0, Lcom/aee/sport/magicam/widget/MyProgressDialog;->spaceshipImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/aee/sport/magicam/widget/MyProgressDialog;->hyperspaceJumpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/aee/sport/magicam/widget/MyProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 44
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {p0, v1, v3}, Lcom/aee/sport/magicam/widget/MyProgressDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 74
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 81
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyProgressDialog;->tipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "titleId"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyProgressDialog;->tipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/MyProgressDialog;->spaceshipImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aee/sport/magicam/widget/MyProgressDialog;->hyperspaceJumpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 56
    return-void
.end method
