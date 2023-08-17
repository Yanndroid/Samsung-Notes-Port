.class public interface abstract Lcom/samsung/android/app/sdk/deepsky/donation/Donation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/donation/Donation;",
        "",
        "donate",
        "",
        "actionDonation",
        "Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;",
        "listener",
        "Lcom/samsung/android/app/sdk/deepsky/donation/DonationListener;",
        "donateForResult",
        "",
        "removeDonatedData",
        "paramName",
        "",
        "paramValue",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract donate(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)V
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract donate(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;Lcom/samsung/android/app/sdk/deepsky/donation/DonationListener;)V
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/donation/DonationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract donateForResult(Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)I
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract removeDonatedData(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
