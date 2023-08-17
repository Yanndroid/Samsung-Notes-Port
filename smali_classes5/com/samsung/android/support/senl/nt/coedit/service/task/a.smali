.class public final synthetic Lcom/samsung/android/support/senl/nt/coedit/service/task/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->a(Landroid/content/Context;)V

    return-void
.end method
