.class public final synthetic Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;


# static fields
.field public static final synthetic a:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/b;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/b;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/b;->a:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->a()V

    return-void
.end method
