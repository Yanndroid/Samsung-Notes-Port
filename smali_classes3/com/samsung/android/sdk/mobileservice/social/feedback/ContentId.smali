.class public abstract Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_ACTIVITY:I = 0x1


# instance fields
.field private mContentIdType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;->mContentIdType:I

    return-void
.end method


# virtual methods
.method public getContentIdType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;->mContentIdType:I

    return v0
.end method

.method public abstract toBundle()Landroid/os/Bundle;
.end method
