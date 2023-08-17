.class public Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncParam"
.end annotation


# instance fields
.field public mCallback:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;->mCallback:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;

    return-void
.end method
