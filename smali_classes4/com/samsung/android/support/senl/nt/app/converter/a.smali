.class public final synthetic Lcom/samsung/android/support/senl/nt/app/converter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupStatusCallback;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/a;->a:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    return-void
.end method


# virtual methods
.method public final onEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/a;->a:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->a(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;I)V

    return-void
.end method
