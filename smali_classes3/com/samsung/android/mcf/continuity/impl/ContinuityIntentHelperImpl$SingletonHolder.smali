.class public final Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl$SingletonHolder;->INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl;
    .locals 1

    sget-object v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl$SingletonHolder;->INSTANCE:Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl;

    return-object v0
.end method
