.class public Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/InvalidTask;
.super Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/Task;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "InvalidTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "InvalidTask"

    const-string v1, "run"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
