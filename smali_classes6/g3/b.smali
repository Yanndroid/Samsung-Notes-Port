.class public final synthetic Lg3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;

.field public final synthetic b:Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;

.field public final synthetic c:Lcom/samsung/android/app/sdk/deepsky/donation/DonationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;Lcom/samsung/android/app/sdk/deepsky/donation/DonationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3/b;->a:Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;

    iput-object p2, p0, Lg3/b;->b:Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;

    iput-object p3, p0, Lg3/b;->c:Lcom/samsung/android/app/sdk/deepsky/donation/DonationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg3/b;->a:Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;

    iget-object v1, p0, Lg3/b;->b:Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;

    iget-object v2, p0, Lg3/b;->c:Lcom/samsung/android/app/sdk/deepsky/donation/DonationListener;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;->a(Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;Lcom/samsung/android/app/sdk/deepsky/donation/ActionDonation;Lcom/samsung/android/app/sdk/deepsky/donation/DonationListener;)V

    return-void
.end method
