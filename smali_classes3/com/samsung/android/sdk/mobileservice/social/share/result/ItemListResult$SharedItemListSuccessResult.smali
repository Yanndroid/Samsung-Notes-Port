.class public Lcom/samsung/android/sdk/mobileservice/social/share/result/ItemListResult$SharedItemListSuccessResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/result/ItemListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedItemListSuccessResult"
.end annotation


# instance fields
.field private itemId:Ljava/lang/String;

.field private spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/ItemListResult$SharedItemListSuccessResult;->spaceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/ItemListResult$SharedItemListSuccessResult;->itemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/ItemListResult$SharedItemListSuccessResult;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/ItemListResult$SharedItemListSuccessResult;->spaceId:Ljava/lang/String;

    return-object v0
.end method
