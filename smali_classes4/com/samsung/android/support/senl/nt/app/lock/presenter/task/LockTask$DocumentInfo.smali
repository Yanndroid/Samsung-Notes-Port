.class public Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentInfo"
.end annotation


# instance fields
.field public isSdoc:Z

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;->uuid:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;->isSdoc:Z

    return-void
.end method
