.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingJob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingJob"
.end annotation


# static fields
.field public static final TYPE_CLOSE:I = 0x0

.field public static final TYPE_NEW:I = 0x3

.field public static final TYPE_NOTE_CHANGE:I = 0x1

.field public static final TYPE_UPDATE:I = 0x2


# instance fields
.field public mJob:Ljava/lang/Runnable;

.field public mType:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingJob;->mJob:Ljava/lang/Runnable;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingJob;->mType:I

    return-void
.end method
