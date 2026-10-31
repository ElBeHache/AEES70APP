.class public Lcom/aee/sport/magicam/widget/SlipButtonItem;
.super Landroid/widget/ToggleButton;
.source "SlipButtonItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;
    }
.end annotation


# instance fields
.field private item:Lcom/aee/sport/magicam/widget/SlipButtonItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p0, p0, Lcom/aee/sport/magicam/widget/SlipButtonItem;->item:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object p0, p0, Lcom/aee/sport/magicam/widget/SlipButtonItem;->item:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput-object p0, p0, Lcom/aee/sport/magicam/widget/SlipButtonItem;->item:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/widget/SlipButtonItem;)Lcom/aee/sport/magicam/widget/SlipButtonItem;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/aee/sport/magicam/widget/SlipButtonItem;->item:Lcom/aee/sport/magicam/widget/SlipButtonItem;

    return-object v0
.end method


# virtual methods
.method public SetOnChangedListener(Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;

    .prologue
    .line 32
    new-instance v0, Lcom/aee/sport/magicam/widget/SlipButtonItem$1;

    invoke-direct {v0, p0, p1}, Lcom/aee/sport/magicam/widget/SlipButtonItem$1;-><init>(Lcom/aee/sport/magicam/widget/SlipButtonItem;Lcom/aee/sport/magicam/widget/SlipButtonItem$OnChangedListener;)V

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/widget/SlipButtonItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method
