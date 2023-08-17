.class public final synthetic Lcom/google/firebase/components/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# static fields
.field public static final synthetic a:Lcom/google/firebase/components/s;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/components/s;

    invoke-direct {v0}, Lcom/google/firebase/components/s;-><init>()V

    sput-object v0, Lcom/google/firebase/components/s;->a:Lcom/google/firebase/components/s;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/firebase/components/OptionalProvider;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
