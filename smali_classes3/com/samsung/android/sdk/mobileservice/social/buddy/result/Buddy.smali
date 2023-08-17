.class public Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Buddy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBuddyId:Ljava/lang/String;

.field private final mCertificate:Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Certificate;

.field private final mSyncedContact:Lcom/samsung/android/sdk/mobileservice/social/buddy/result/SyncedContact;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Certificate;Lcom/samsung/android/sdk/mobileservice/social/buddy/result/SyncedContact;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Buddy;->mBuddyId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Buddy;->mCertificate:Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Certificate;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Buddy;->mSyncedContact:Lcom/samsung/android/sdk/mobileservice/social/buddy/result/SyncedContact;

    return-void
.end method


# virtual methods
.method public getBuddyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Buddy;->mBuddyId:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificate()Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Buddy;->mCertificate:Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Certificate;

    return-object v0
.end method

.method public getSyncedContact()Lcom/samsung/android/sdk/mobileservice/social/buddy/result/SyncedContact;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Buddy;->mSyncedContact:Lcom/samsung/android/sdk/mobileservice/social/buddy/result/SyncedContact;

    return-object v0
.end method
