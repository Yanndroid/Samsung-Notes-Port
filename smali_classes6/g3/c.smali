.class public final synthetic Lg3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3/c;->a:Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;

    iput-object p2, p0, Lg3/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lg3/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg3/c;->a:Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;

    iget-object v1, p0, Lg3/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lg3/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;->b(Lcom/samsung/android/app/sdk/deepsky/donation/DonationImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
