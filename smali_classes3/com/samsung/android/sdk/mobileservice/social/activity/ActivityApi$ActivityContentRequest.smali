.class public Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityContentRequest;
.super Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityContentRequest"
.end annotation


# instance fields
.field private mHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityContentRequest;->mHash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityContentRequest;->mHash:Ljava/lang/String;

    return-object v0
.end method
