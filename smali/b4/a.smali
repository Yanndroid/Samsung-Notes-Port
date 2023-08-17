.class public final synthetic Lb4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb4/a;->a:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    iput p2, p0, Lb4/a;->b:I

    return-void
.end method


# virtual methods
.method public final onTaskStateChanged(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lb4/a;->a:Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    iget v1, p0, Lb4/a;->b:I

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->a(Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;ILjava/lang/String;Z)V

    return-void
.end method
