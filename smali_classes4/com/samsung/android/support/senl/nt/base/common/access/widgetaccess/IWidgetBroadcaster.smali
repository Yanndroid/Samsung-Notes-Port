.class public interface abstract Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract sendDeleteDummyWidgetBroadcast(Landroid/content/Context;)V
.end method

.method public abstract sendDeleteUUIDListWidgetSettingBroadcast(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
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
.end method

.method public abstract sendDeleteUUIDWidgetBroadcast(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendPickWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;II)V
.end method

.method public abstract sendPickWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract sendUpdateUUIDListWidgetBroadcast(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendUpdateUUIDWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract sendUpdateUUIDWidgetListSettingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendUpdateWidgetSettingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method
