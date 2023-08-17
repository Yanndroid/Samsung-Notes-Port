.class public Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$FamilyGroupRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FamilyGroupRequest"
.end annotation


# instance fields
.field private final mGroupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$FamilyGroupRequest;->mGroupName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$FamilyGroupRequest;->mGroupName:Ljava/lang/String;

    return-object v0
.end method
