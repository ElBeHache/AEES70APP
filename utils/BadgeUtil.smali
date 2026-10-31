.class public Lcom/aee/sport/magicam/utils/BadgeUtil;
.super Ljava/lang/Object;
.source "BadgeUtil.java"


# static fields
.field private static final ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String; = "android.intent.action.BADGE_COUNT_UPDATE"

.field private static final EXTRA_BADGE_COUNT:Ljava/lang/String; = "badge_count"

.field private static final EXTRA_BADGE_COUNT_CLASS_NAME:Ljava/lang/String; = "badge_count_class_name"

.field private static final EXTRA_BADGE_COUNT_PACKAGE_NAME:Ljava/lang/String; = "badge_count_package_name"

.field private static final TAG:Ljava/lang/String; = "BadgeUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 74
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 86
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_0

    .line 87
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 90
    :cond_0
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v3
.end method

.method public static resetBadgeCount(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aee/sport/magicam/utils/BadgeUtil;->setBadgeCount(Landroid/content/Context;I)V

    .line 61
    return-void
.end method

.method private static sendToSamsumg(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # I

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "badgeIntent":Landroid/content/Intent;
    const-string v1, "badge_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v1, "badge_count_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v1, "badge_count_class_name"

    invoke-static {p0}, Lcom/aee/sport/magicam/utils/BadgeUtil;->getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method private static sendToSony(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x1

    .line 139
    .local v0, "isShow":Z
    const-string v2, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v1, "localIntent":Landroid/content/Intent;
    const-string v2, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    const-string v2, "com.sonyericsson.home.action.UPDATE_BADGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v2, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    invoke-static {p0}, Lcom/aee/sport/magicam/utils/BadgeUtil;->getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v2, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method private static sendToXiaoMi(Landroid/content/Context;I)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # I

    .prologue
    .line 94
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 95
    .local v8, "nm":Landroid/app/NotificationManager;
    const/4 v9, 0x0

    .line 96
    .local v9, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    .line 98
    .local v4, "isMiUIV6":Z
    :try_start_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080098

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080099

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 101
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 102
    const v11, 0x7f02007c

    invoke-virtual {v0, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 104
    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 105
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 106
    iget v11, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v9, Landroid/app/Notification;->flags:I

    .line 107
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/aee/sport/magicam/MainActivity;

    invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v10, "notificationIntent":Landroid/content/Intent;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, v11, v10, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 109
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    iput-object v1, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 111
    const-string v11, "android.app.MiuiNotification"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 112
    .local v7, "miuiNotificationClass":Ljava/lang/Class;
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 113
    .local v6, "miuiNotification":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "messageCount"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 114
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v6, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "extraNotification"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 117
    invoke-virtual {v3, v9, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    .line 131
    const v11, 0x18a92

    invoke-virtual {v8, v11, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 135
    .end local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "miuiNotification":Ljava/lang/Object;
    .end local v7    # "miuiNotificationClass":Ljava/lang/Class;
    .end local v10    # "notificationIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    const/4 v4, 0x0

    .line 123
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v5, "localIntent":Landroid/content/Intent;
    const-string v11, "android.intent.extra.update_application_component_name"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 125
    invoke-static {p0}, Lcom/aee/sport/magicam/utils/BadgeUtil;->getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 124
    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v11, "android.intent.extra.update_application_message_text"

    invoke-virtual {v5, v11, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    .line 131
    const v11, 0x18a92

    invoke-virtual {v8, v11, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "localIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v11

    .line 129
    if-eqz v9, :cond_1

    if-eqz v4, :cond_1

    .line 131
    const v12, 0x18a92

    invoke-virtual {v8, v12, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 133
    :cond_1
    throw v11
.end method

.method public static setBadgeCount(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # I

    .prologue
    .line 44
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0, p1}, Lcom/aee/sport/magicam/utils/BadgeUtil;->sendToXiaoMi(Landroid/content/Context;I)V

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aee/sport/magicam/utils/BadgeUtil;->sendToSony(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p0, p1}, Lcom/aee/sport/magicam/utils/BadgeUtil;->sendToSamsumg(Landroid/content/Context;I)V

    goto :goto_0
.end method
