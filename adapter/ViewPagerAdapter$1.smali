.class Lcom/aee/sport/magicam/adapter/ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "ViewPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;

    invoke-static {v0}, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->access$0(Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;)V

    .line 67
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter$1;->this$0:Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;

    invoke-static {v0}, Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;->access$1(Lcom/aee/sport/magicam/adapter/ViewPagerAdapter;)V

    .line 69
    return-void
.end method
