.class public Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcaster;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendDeleteDummyWidgetBroadcast(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendDeleteDummyWidgetBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method public sendDeleteUUIDListWidgetSettingBroadcast(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendDeleteUUIDListWidgetSettingBroadcast(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public sendDeleteUUIDWidgetBroadcast(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendDeleteUUIDWidgetBroadcast(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public sendPickWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    invoke-static/range {p1 .. p7}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendPickWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;II)V

    return-void
.end method

.method public sendPickWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendPickWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public sendUpdateUUIDListWidgetBroadcast(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendUpdateUUIDListWidgetBroadcast(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public sendUpdateUUIDWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendUpdateUUIDWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public sendUpdateUUIDWidgetListSettingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendUpdateUUIDWidgetListSettingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendUpdateWidgetSettingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendUpdateWidgetSettingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
