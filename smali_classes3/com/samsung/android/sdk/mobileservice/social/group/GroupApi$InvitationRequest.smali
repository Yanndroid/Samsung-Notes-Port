.class public Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvitationRequest"
.end annotation


# static fields
.field public static final ID_TYPE_ACCOUNT_ID:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TYPE_DUID:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TYPE_GUID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TYPE_MSISDN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mIdType:I

.field private mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInvitationMessage:Ljava/lang/String;

.field private mOptionalIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;->mInvitationMessage:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;->mIdType:I

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;->mIds:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;->mOptionalIds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;->mInvitationMessage:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;->mIdType:I

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;->mIds:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;->mOptionalIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getIdType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;->mIdType:I

    return v0
.end method

.method public getIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;->mIds:Ljava/util/List;

    return-object v0
.end method

.method public getInvitationMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;->mInvitationMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;->mOptionalIds:Ljava/util/List;

    return-object v0
.end method
