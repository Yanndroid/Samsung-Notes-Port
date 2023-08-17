.class public Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityRequest"
.end annotation


# instance fields
.field private mActivityId:Ljava/lang/String;

.field private mActivityType:I

.field private mGuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityRequest;->mGuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityRequest;->mActivityId:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityRequest;->mActivityType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityRequest;->mGuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityRequest;->mActivityId:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityRequest;->mActivityType:I

    return-void
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityRequest;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityRequest;->mActivityType:I

    return v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityRequest;->mGuid:Ljava/lang/String;

    return-object v0
.end method
