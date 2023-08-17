.class public Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService;
.super Landroid/widget/RemoteViewsService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;
    }
.end annotation


# static fields
.field private static final SHORTCUT_WIDTH_RATIO:F = 1.5f

.field private static final TAG:Ljava/lang/String; = "WidgetImgShortcutService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2

    const-string v0, "WidgetImgShortcutService"

    const-string v1, "onGetViewFactory"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;

    invoke-virtual {p0}, Landroid/widget/RemoteViewsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/notes/widget/WidgetImgShortcutService$ShortcutViewFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
