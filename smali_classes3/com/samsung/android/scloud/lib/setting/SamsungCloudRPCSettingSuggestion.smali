.class public Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingSuggestion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[scsettingv2suggestion][2.0.13.0]"


# instance fields
.field private settingSuggestion:Lcom/samsung/android/scloud/lib/setting/ISettingSuggestion;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SettingSuggestionProviderClient;

    const-string v1, "[scsettingv2suggestion][2.0.13.0]"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/scloud/lib/setting/SettingSuggestionProviderClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingSuggestion;->settingSuggestion:Lcom/samsung/android/scloud/lib/setting/ISettingSuggestion;

    return-void
.end method


# virtual methods
.method public getStatus(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingSuggestion;->settingSuggestion:Lcom/samsung/android/scloud/lib/setting/ISettingSuggestion;

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/lib/setting/ISettingSuggestion;->getStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getStatusByTag(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingSuggestion;->settingSuggestion:Lcom/samsung/android/scloud/lib/setting/ISettingSuggestion;

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/lib/setting/ISettingSuggestion;->getStatusByTag(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getStatusChangedUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingSuggestion;->settingSuggestion:Lcom/samsung/android/scloud/lib/setting/ISettingSuggestion;

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/lib/setting/ISettingSuggestion;->getStatusChangedUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getStatusIds(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingSuggestion;->settingSuggestion:Lcom/samsung/android/scloud/lib/setting/ISettingSuggestion;

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/lib/setting/ISettingSuggestion;->getStatusIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
