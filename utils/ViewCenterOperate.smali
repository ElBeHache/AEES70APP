.class public Lcom/aee/sport/magicam/utils/ViewCenterOperate;
.super Ljava/lang/Object;
.source "ViewCenterOperate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private bg_fly_1:Landroid/view/View;

.field private btn_fly_:Landroid/view/View;

.field private fly:Landroid/view/View;

.field private gusture:Landroid/view/View;

.field private hight:Landroid/widget/TextView;

.field private layout_fly_show:Landroid/view/View;

.field private ptz:Landroid/view/View;

.field private ptzDown:Landroid/view/View;

.field private ptzLeft:Landroid/view/View;

.field private ptzMagnify:Landroid/view/View;

.field private ptzReduce:Landroid/view/View;

.field private ptzRight:Landroid/view/View;

.field private ptzUp:Landroid/view/View;

.field private radar:Landroid/view/View;

.field private seekbarHorizontal:Landroid/view/View;

.field private seekbarVertical:Landroid/view/View;

.field private space:Landroid/widget/TextView;

.field private speed:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    .line 99
    invoke-direct {p0}, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->initView()V

    .line 100
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 103
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->space:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c006b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->hight:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c006c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->speed:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0068

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->btn_fly_:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->bg_fly_1:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->layout_fly_show:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->fly:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptz:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->gusture:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzUp:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0073

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzDown:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0071

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzLeft:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0072

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzRight:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->radar:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzMagnify:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzReduce:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->seekbarVertical:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->seekbarHorizontal:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->layout_fly_show:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->btn_fly_:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->bg_fly_1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->fly:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptz:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->gusture:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzUp:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzDown:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzRight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->radar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzMagnify:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzReduce:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->seekbarVertical:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->seekbarHorizontal:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->btn_fly_:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->fly:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptz:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->gusture:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzUp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzDown:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->radar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzMagnify:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzReduce:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    :pswitch_0
    return-void

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->layout_fly_show:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->layout_fly_show:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->bg_fly_1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->fly:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptz:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->gusture:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->layout_fly_show:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->bg_fly_1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->fly:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptz:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->gusture:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzUp:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzDown:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzRight:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->seekbarVertical:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->seekbarHorizontal:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->radar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzUp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzUp:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzDown:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzRight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->seekbarVertical:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->seekbarHorizontal:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzUp:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzDown:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->ptzRight:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->seekbarVertical:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->seekbarHorizontal:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 214
    :pswitch_3
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v0

    new-instance v1, Lcom/aee/sport/magicam/utils/ViewCenterOperate$1;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/utils/ViewCenterOperate$1;-><init>(Lcom/aee/sport/magicam/utils/ViewCenterOperate;)V

    .line 222
    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AEE_CONTROL_ZOOM_OUT:I

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    goto/16 :goto_0

    .line 225
    :pswitch_4
    invoke-static {}, Lcom/aee/sport/magicam/service/ControlCMD;->getInstance()Lcom/aee/sport/magicam/service/ControlCMD;

    move-result-object v0

    new-instance v1, Lcom/aee/sport/magicam/utils/ViewCenterOperate$2;

    invoke-direct {v1, p0}, Lcom/aee/sport/magicam/utils/ViewCenterOperate$2;-><init>(Lcom/aee/sport/magicam/utils/ViewCenterOperate;)V

    .line 233
    sget v2, Lcom/aee/sport/magicam/utils/Constants;->AEE_CONTROL_ZOOM_IN:I

    .line 225
    invoke-virtual {v0, v1, v2}, Lcom/aee/sport/magicam/service/ControlCMD;->cmd(Lcom/aee/sport/magicam/service/ControlCMD$SocketInfoReTurnInfo;I)V

    goto/16 :goto_0

    .line 236
    :pswitch_5
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->radar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 238
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->radar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/aee/sport/magicam/utils/ViewCenterOperate;->radar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0068
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
