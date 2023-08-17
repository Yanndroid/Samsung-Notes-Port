.class public final synthetic Lg3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;

.field public final synthetic b:Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3/a;->a:Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;

    iput-object p2, p0, Lg3/a;->b:Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg3/a;->a:Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;

    iget-object v1, p0, Lg3/a;->b:Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;->c(Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;)V

    return-void
.end method
