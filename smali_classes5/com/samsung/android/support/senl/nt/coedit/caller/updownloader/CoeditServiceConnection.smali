.class public abstract Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unsubscribe(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->unsubscribe(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    :cond_0
    return-void
.end method
