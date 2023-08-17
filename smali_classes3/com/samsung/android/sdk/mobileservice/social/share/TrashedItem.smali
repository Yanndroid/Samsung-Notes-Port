.class public Lcom/samsung/android/sdk/mobileservice/social/share/TrashedItem;
.super Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;
.source "SourceFile"


# instance fields
.field private mExpiryAt:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExpiryAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/TrashedItem;->mExpiryAt:J

    return-wide v0
.end method

.method public setExpiryAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/TrashedItem;->mExpiryAt:J

    return-void
.end method
