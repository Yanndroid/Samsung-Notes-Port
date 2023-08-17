.class public Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult$ExcludedMember;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcludedMember"
.end annotation


# static fields
.field public static final REASON_ALREADY_INVITED_USER:Ljava/lang/String; = "Already invited user"

.field public static final REASON_ALREADY_JOINED:Ljava/lang/String; = "Already joined the group"

.field public static final REASON_ALREADY_JOINED_ANOTHER_UNIQUE_GROUP:Ljava/lang/String; = "reason_already_joined_another_unique_group"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REASON_DIFFERENT_COUNTRY_INFO:Ljava/lang/String; = "Different country info"

.field public static final REASON_UNKNOWN:Ljava/lang/String; = "No reason"

.field public static final REASON_UNREGISTERED_USER:Ljava/lang/String; = "Unregistered user"

.field public static final REASON_UNREGISTERED_USER_FOR_SAMSUNG_ACCOUNT:Ljava/lang/String; = "Not registered user for Samsung account service"

.field public static final REASON_UNREGISTERED_USER_FOR_SAMSUNG_CLOUD:Ljava/lang/String; = "reason_unregistered_user_for_samsung_cloud"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REASON_USER_USING_OLD_APP_VERSION:Ljava/lang/String; = "User using old app version"


# instance fields
.field private mId:Ljava/lang/String;

.field private mOptionalId:Ljava/lang/String;

.field private mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult$ExcludedMember;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult$ExcludedMember;->mOptionalId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult$ExcludedMember;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult$ExcludedMember;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult$ExcludedMember;->mOptionalId:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult$ExcludedMember;->mReason:Ljava/lang/String;

    return-object v0
.end method
