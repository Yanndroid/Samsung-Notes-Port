.class public Lcom/samsung/android/sdk/mobileservice/social/buddy/request/Fingerprint;
.super Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyKey;
.source "SourceFile"


# static fields
.field private static final FINGERPRINT:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyKey;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
