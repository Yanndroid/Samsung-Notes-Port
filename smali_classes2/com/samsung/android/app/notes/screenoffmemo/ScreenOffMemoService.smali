.class public Lcom/samsung/android/app/notes/screenoffmemo/ScreenOffMemoService;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenOffMemoService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "ScreenOffMemoService"

    const-string p2, "onStartCommand, not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1
.end method
