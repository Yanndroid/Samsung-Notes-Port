.class public abstract Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExternalBaseCallback"
.end annotation


# instance fields
.field public callback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

.field public contract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->callback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;->contract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    return-void
.end method
