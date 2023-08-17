.class public Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;
    }
.end annotation


# static fields
.field public static final REASON_NOT_ACCEPTED_THE_INVITATION_YET:I = 0x44e

.field public static final REASON_NOT_A_MEMBER:I = 0x44d

.field public static final REASON_OWNERS_PERMISSIONS_CANNOT_BE_CHANGED:I = 0x44f

.field public static final REASON_SERVER_ERROR:I = 0x5dd


# instance fields
.field private mAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

.field private mFailedReason:I

.field private mGroupId:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mOptionalId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority;->mGroupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority;->mId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority;->mOptionalId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority;->mAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    iput p5, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority;->mFailedReason:I

    return-void
.end method


# virtual methods
.method public getAuthority()Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority;->mAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    return-object v0
.end method

.method public getFailedReason()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority;->mFailedReason:I

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority;->mOptionalId:Ljava/lang/String;

    return-object v0
.end method
