.class public Lcom/samsung/android/app/notes/widget/WidgetService;
.super Landroid/widget/RemoteViewsService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;
    }
.end annotation


# static fields
.field public static final MAXIMUM_BITMAP_SIZE:I = 0x9600000

.field public static final MB_SIZE:I = 0x100000

.field private static final TAG:Ljava/lang/String; = "WidgetService"

.field private static final WIDGET_QUALITY_RATIO:F = 0.7f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2

    const-string v0, "WidgetService"

    const-string v1, "onGetViewFactory"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;

    invoke-virtual {p0}, Landroid/widget/RemoteViewsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/notes/widget/WidgetService$MemoViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
