.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;
.super Landroid/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagCommand;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMMAND:I = 0x0

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTION_1:I = 0x1

.field private static final OPTION_2:I = 0x2

.field private static final OPTION_3:I = 0x3

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final POST_TAG_REGEX:Ljava/lang/String; = "\\[([^\\[\\]]*)\\]"

.field private static final POST_VALUE_REGEX:Ljava/lang/String; = "\\:(\\w+)"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_TRANSITION_ALPHA:Ljava/lang/String; = "android:fade:transitionAlpha"

.field private static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TAG:Ljava/lang/String; = "TagTransition"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TT_ACCESSIBILITY_FOCUS:Ljava/lang/String; = "accessibility_focus"

.field private static final TT_AFTER_INVISIBLE:Ljava/lang/String; = "after_invisible"

.field private static final TT_AFTER_VISIBLE:Ljava/lang/String; = "after_visible"

.field private static final TT_CHASING_VIEW:Ljava/lang/String; = "chasing"

.field private static final TT_FADE:Ljava/lang/String; = "fade"

.field private static final TT_FADE_OPPOSITE:Ljava/lang/String; = "fade_opposite"

.field private static final TT_LINK_CHASING_NAME:Ljava/lang/String; = "link_chasing"

.field private static final TT_LINK_FOLLOW_NAME:Ljava/lang/String; = "link_follow"

.field private static final TT_LINK_IGNORE_NAME:Ljava/lang/String; = "link_ignore"

.field private static final TT_LINK_TARGET_NAME:Ljava/lang/String; = "link_target"

.field private static final TT_LINK_TYPE_END:Ljava/lang/String; = "end"

.field private static final TT_LINK_TYPE_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TT_REGEX_COMMAND_DIVIDE:Ljava/lang/String; = ";"

.field private static final TT_REGEX_OPTION_DIVIDE:Ljava/lang/String; = ":"

.field private static final TT_ROOT_LAYOUT:Ljava/lang/String; = "root_layout"

.field private static final TT_ROTATION:Ljava/lang/String; = "rotation"

.field private static final TT_TARGET_VIEW:Ljava/lang/String; = "target"

.field private static final TT_VISIBILITY:Ljava/lang/String; = "visibility"


# instance fields
.field private mDefaultListener:Landroid/transition/Transition$TransitionListener;

.field private mIsExpand:Z

.field private mRunnableEnd:Ljava/lang/Runnable;

.field private mRunnableStart:Ljava/lang/Runnable;

.field private mTagSourceNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTagTargetName:Ljava/lang/String;

.field private mTagTargetPattern:Ljava/util/regex/Pattern;

.field private final mTagViewOriginValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpLocation:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$10;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$10;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$11;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$11;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$12;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "topLeft"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$12;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$13;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$13;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$14;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$14;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$15;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$15;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->POSITION_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagViewOriginValues:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mIsExpand:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mRunnableEnd:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mRunnableStart:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagViewOriginValues:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mRunnableEnd:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mRunnableStart:Ljava/lang/Runnable;

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mIsExpand:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagViewOriginValues:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mRunnableEnd:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mRunnableStart:Ljava/lang/Runnable;

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mIsExpand:Z

    invoke-direct {p0, p1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)Landroid/transition/Transition$TransitionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mDefaultListener:Landroid/transition/Transition$TransitionListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mRunnableEnd:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mRunnableStart:Ljava/lang/Runnable;

    return-object p0
.end method

.method private captureCommonValues(Landroid/transition/TransitionValues;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;)V
    .locals 3

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->rect:Landroid/graphics/Rect;

    const-string v2, "android:changeBounds:bounds"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "android:changeBounds:parent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget v1, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->windowX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android:changeBounds:windowX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->windowY:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "android:changeBounds:windowY"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "android:changeBounds:clip"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "android:visibility:visibility"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "android:fade:transitionAlpha"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;Z)V
    .locals 6

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->hasTagString(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagTargetPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->getTagViewInfo(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "link_target\\:(\\w+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mIsExpand:Z

    if-ne p2, v3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagViewOriginValues:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagTargetName:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagSourceNameList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\\[([^\\[\\]]*)\\]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-static {v3, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v5, "link_chasing\\:(\\w+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagViewOriginValues:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->captureCommonValues(Landroid/transition/TransitionValues;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;)V

    return-void
.end method

.method private createAccessibilityFocus([Ljava/lang/String;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$7;

    invoke-direct {v1, p0, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;Landroid/animation/Animator;Landroid/transition/TransitionValues;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mIsExpand:Z

    if-eqz p2, :cond_0

    const-string p2, "chasing"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mIsExpand:Z

    if-nez p2, :cond_1

    const-string p2, "target"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private createFadeAnimator([Ljava/lang/String;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11

    iget-object v3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "fade_opposite"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mIsExpand:Z

    xor-int/2addr v1, v6

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mIsExpand:Z

    :goto_0
    move v7, v1

    const-string v1, "alpha"

    const/16 v2, 0x8

    const-string v4, "android:fade:transitionAlpha"

    const/4 v5, 0x0

    const/4 v8, 0x2

    const-string v9, "android:visibility:visibility"

    if-eqz v7, :cond_3

    iget-object v10, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_1

    iget-object p3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    if-ne p3, v2, :cond_2

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    new-array v2, v8, [F

    aput v5, v2, v0

    aput p2, v2, v6

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$8;

    invoke-direct {v0, p0, p2, v3, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$8;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;Landroid/animation/ObjectAnimator;Landroid/view/View;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_3
    iget-object p2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object p2, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    iget-object p2, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_4
    move p2, v0

    :goto_2
    if-ne p2, v2, :cond_5

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    new-array p3, v8, [F

    aput v4, p3, v0

    aput v5, p3, v6

    invoke-static {v3, v1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-instance v9, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$9;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$9;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;Landroid/animation/ObjectAnimator;Landroid/view/View;FI)V

    invoke-virtual {p3, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object p2, p3

    :goto_3
    move p3, v6

    :goto_4
    array-length v0, p1

    if-ge p3, v0, :cond_8

    aget-object v0, p1, p3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p3, v6, :cond_6

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_5

    :cond_6
    if-ne p3, v8, :cond_7

    if-eqz v7, :cond_7

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_7
    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_8
    return-object p2
.end method

.method private createLinkChasingAnimator([Ljava/lang/String;Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v0, 0x0

    aget-object v3, p1, v0

    const/4 v4, 0x1

    aget-object v5, p1, v4

    iget-object v6, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v7, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v8, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:changeBounds:parent"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    if-eqz v7, :cond_a

    if-nez v8, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v7, v10, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagViewOriginValues:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "link_target:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;

    if-nez v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTagViewInfo is null ref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TagTransition"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    :cond_1
    iget-object v8, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget v11, v7, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->windowX:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "android:changeBounds:windowX"

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget v11, v7, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->windowY:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "android:changeBounds:windowY"

    invoke-interface {v8, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v10, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    move-object/from16 v11, p2

    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    iget-object v8, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Integer;

    if-eqz v8, :cond_2

    iget-object v8, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v14, v10, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    aget v14, v14, v0

    sub-int/2addr v8, v14

    goto :goto_0

    :cond_2
    move v8, v0

    :goto_0
    iget-object v14, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/Integer;

    if-eqz v14, :cond_3

    iget-object v14, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v10, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    aget v15, v15, v4

    sub-int/2addr v14, v15

    goto :goto_1

    :cond_3
    move v14, v0

    :goto_1
    iget-object v15, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/Integer;

    if-eqz v15, :cond_4

    iget-object v15, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v15, v10, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    aget v15, v15, v0

    sub-int/2addr v12, v15

    goto :goto_2

    :cond_4
    move v12, v0

    :goto_2
    iget-object v15, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/Integer;

    if-eqz v15, :cond_5

    iget-object v15, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v15, v10, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    aget v15, v15, v4

    sub-int/2addr v13, v15

    goto :goto_3

    :cond_5
    move v13, v0

    :goto_3
    const-string v15, "link_follow"

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    const/16 v17, 0x2

    if-eqz v16, :cond_8

    aget-object v9, p1, v17

    const-string v4, "overlay"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-ne v8, v12, :cond_7

    if-eq v14, v13, :cond_6

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    move v3, v8

    move v4, v14

    move v5, v12

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->getAnimator(Landroid/view/ViewGroup;Landroid/view/View;IIII)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    aget-object v4, p1, v17

    const-string v9, "end"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v10, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagViewOriginValues:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "link_chasing:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;

    if-eqz v4, :cond_9

    iget v5, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->windowX:I

    iget-object v9, v10, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    aget v0, v9, v0

    sub-int/2addr v5, v0

    iget v0, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->windowY:I

    const/4 v4, 0x1

    aget v4, v9, v4

    sub-int/2addr v0, v4

    move v9, v0

    move v12, v5

    goto :goto_5

    :cond_9
    move v9, v13

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move v7, v14

    move v8, v12

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->getAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;IIII)Landroid/animation/Animator;

    move-result-object v9

    :goto_6
    return-object v9

    :cond_a
    :goto_7
    move-object v0, v9

    return-object v0
.end method

.method private createLinkIgnore([Ljava/lang/String;Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iget-object v1, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagViewOriginValues:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "link_target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;

    const-string v4, "android:changeBounds:windowX"

    if-eqz p1, :cond_1

    iget-object v5, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget v6, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->windowX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->windowY:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v6, "android:changeBounds:windowY"

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    iget-object p1, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    aget p2, p2, v4

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_2
    move p1, v4

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignoreParent start "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    aget v1, v1, v4

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TagTransition"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignoreParent end   "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    aget v2, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;

    iget-object v1, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;-><init>(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mIsExpand:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v1

    iget-object v2, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float p1, v2

    iget-object v2, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, p1, v2, v5, v6}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v1

    iget-object v2, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, p1

    int-to-float p1, v6

    iget-object v6, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v2, v5, p1, v6}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p1

    :goto_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    invoke-static {p2, v1, v3, p1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v1

    iget-object v2, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget-object p3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    int-to-float p3, p3

    iget-object v5, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    iget-object p4, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {v1, v2, p3, v5, p4}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p3

    sget-object p4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    invoke-static {p2, p4, v3, p3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v4

    aput-object p3, v1, v0

    invoke-virtual {p4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$2;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;)V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p4

    :cond_4
    :goto_2
    return-object v3
.end method

.method private createRootLayoutAnimator([Ljava/lang/String;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mIsExpand:Z

    if-nez v0, :cond_1

    const-string v0, "chasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->getAnimator(Landroid/transition/TransitionValues;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "target"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->getAnimator(Landroid/transition/TransitionValues;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private createRotationAnimator([Ljava/lang/String;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x1

    aget-object v1, p1, v0

    const/4 v2, 0x2

    aget-object p1, p1, v2

    iget-object p2, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mIsExpand:Z

    const/4 v4, 0x0

    const-string v5, "rotation"

    new-array v2, v2, [F

    if-eqz v3, :cond_0

    int-to-float v1, v1

    aput v1, v2, v4

    int-to-float p1, p1

    aput p1, v2, v0

    invoke-static {p2, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    aput p1, v2, v4

    int-to-float p1, v1

    aput p1, v2, v0

    invoke-static {p2, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private createTagAnimator(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 4

    const-string v0, "TagTransition"

    const-string v1, "createAnimator >>"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v3

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "link_ignore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1
    const-string v0, "link_follow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "fade_opposite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "visibility"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "accessibility_focus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "fade"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "rotation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "link_chasing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_8
    const-string v2, "root_layout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->createLinkIgnore([Ljava/lang/String;Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->createVisibilityAnimator([Ljava/lang/String;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->createAccessibilityFocus([Ljava/lang/String;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->createFadeAnimator([Ljava/lang/String;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->createRotationAnimator([Ljava/lang/String;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->createLinkChasingAnimator([Ljava/lang/String;Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->createRootLayoutAnimator([Ljava/lang/String;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0xb50ead9 -> :sswitch_8
        -0x67a921a -> :sswitch_7
        -0x266f082 -> :sswitch_6
        0x2fd67c -> :sswitch_5
        0x67cac6a7 -> :sswitch_4
        0x73b66312 -> :sswitch_3
        0x77061d4a -> :sswitch_2
        0x78ed7b96 -> :sswitch_1
        0x7d9c3db7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private createVisibilityAnimator([Ljava/lang/String;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v0, "after_invisible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->getAnimator(Landroid/transition/TransitionValues;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "after_visible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->getAnimator(Landroid/transition/TransitionValues;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->setAllParentsClip(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic e(Landroid/view/View;IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method private getAnimator(Landroid/transition/TransitionValues;II)Landroid/animation/Animator;
    .locals 2

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$6;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;Landroid/animation/Animator;Landroid/transition/TransitionValues;I)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private getAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;IIII)Landroid/animation/Animator;
    .locals 20

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v6, p5

    iget-object v6, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->rect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v7, v8, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v6, "android:changeBounds:bounds"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v15, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->setAllParentsClip(Landroid/view/View;Ljava/lang/Boolean;)V

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    const-string v7, "TagTransition"

    if-eqz v4, :cond_e

    if-nez v5, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v8, v15, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mIsExpand:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int v10, p6, p8

    add-int v11, v8, v10

    iget v12, v5, Landroid/graphics/Rect;->top:I

    sub-int v13, p7, p9

    add-int v14, v12, v13

    iget v9, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v13

    sub-int v10, v9, v11

    sub-int v13, v4, v14

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v17, v6, v8

    sub-int v18, v5, v12

    move/from16 v3, v17

    move/from16 v1, v18

    move/from16 v19, v5

    move v5, v4

    move v4, v9

    move v9, v12

    move v12, v6

    move v6, v10

    move v10, v11

    move v11, v14

    move/from16 v14, v19

    goto :goto_1

    :cond_1
    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int v8, p6, p8

    add-int/2addr v6, v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int v10, p7, p9

    add-int/2addr v9, v10

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v11

    if-eqz v11, :cond_2

    iget v8, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget v11, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v11

    :goto_0
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v10

    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v8, v6

    sub-int v14, v4, v9

    sub-int v17, v12, v10

    sub-int v18, v5, v11

    move/from16 v3, v17

    move/from16 v1, v18

    move/from16 v19, v14

    move v14, v4

    move v4, v12

    move v12, v8

    move v8, v6

    move v6, v13

    move/from16 v13, v19

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v1

    const-string v1, "createAnimator Start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagSourceNameList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v3

    const-string v3, " | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 p6, v5

    const-string v5, "x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p7, v4

    const-string v4, "createAnimator End   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagSourceNameList:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:clip"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move/from16 v18, v2

    move-object/from16 v2, p2

    iget-object v2, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    if-eqz v6, :cond_3

    if-nez v13, :cond_4

    :cond_3
    if-eqz v1, :cond_8

    if-eqz v18, :cond_8

    :cond_4
    if-ne v10, v8, :cond_6

    if-eq v11, v9, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v4, p7

    goto :goto_3

    :cond_6
    :goto_2
    move/from16 v4, p7

    const/4 v3, 0x1

    :goto_3
    move/from16 v5, p6

    if-ne v4, v12, :cond_7

    if-eq v5, v14, :cond_9

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    move/from16 v5, p6

    move/from16 v4, p7

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    :cond_a
    if-nez v0, :cond_c

    if-eqz v2, :cond_c

    :cond_b
    add-int/lit8 v3, v3, 0x1

    :cond_c
    move/from16 v17, v3

    if-nez v17, :cond_d

    const-string v0, "createAnimator numChanges is zero "

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_d
    move/from16 v16, v1

    move-object/from16 v1, p4

    invoke-static {v1, v10, v11, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    move-object/from16 v0, p0

    move v2, v10

    move v3, v11

    move v7, v13

    move v10, v12

    move v11, v14

    move/from16 v12, v16

    move/from16 v13, v18

    move/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->getAnimatorByObjectAnimator(Landroid/view/View;IIIIIIIIIIIII)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_e
    :goto_5
    const-string v0, "getAnimator# bounds is null"

    invoke-static {v7, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getAnimator(Landroid/view/ViewGroup;Landroid/view/View;IIII)Landroid/animation/Animator;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    add-int/2addr v0, p3

    add-int/2addr v1, p4

    invoke-virtual {v3, p3, p4, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    int-to-float p6, p6

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p3

    sget-object p4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    const/4 p5, 0x0

    invoke-static {p4, p5, p3}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Landroid/animation/PropertyValuesHolder;

    const/4 p5, 0x0

    aput-object p3, p4, p5

    invoke-static {v3, p4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$5;

    invoke-direct {p4, p0, p1, v3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p3
.end method

.method private getAnimatorByObjectAnimator(Landroid/view/View;IIIIIIIIIIIII)Landroid/animation/Animator;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    const/4 v10, 0x2

    const/4 v11, 0x0

    move/from16 v12, p14

    if-ne v12, v10, :cond_1

    move/from16 v12, p6

    move/from16 v13, p12

    if-ne v12, v13, :cond_0

    move/from16 v12, p7

    move/from16 v13, p13

    if-ne v12, v13, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v5, v6

    int-to-float v6, v7

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->POSITION_PROPERTY:Landroid/util/Property;

    goto :goto_1

    :cond_0
    new-instance v12, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;

    invoke-direct {v12, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v13

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v6, v6

    int-to-float v7, v7

    invoke-virtual {v13, v2, v3, v6, v7}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    invoke-static {v12, v3, v11, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v3

    int-to-float v4, v4

    int-to-float v5, v5

    int-to-float v6, v8

    int-to-float v7, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    invoke-static {v12, v4, v11, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v10, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$3;

    invoke-direct {v2, p0, v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;)V

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v4

    goto :goto_2

    :cond_1
    if-ne v2, v6, :cond_3

    if-eq v3, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v2

    int-to-float v3, v4

    int-to-float v4, v5

    int-to-float v5, v8

    int-to-float v6, v9

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v5, v6

    int-to-float v6, v7

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    :goto_1
    invoke-static {p1, v3, v11, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_2
    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$4;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2
.end method

.method private getTagViewInfo(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;
    .locals 7

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;-><init>(Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    iput v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->rotate:F

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->startMargin:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTmpLocation:[I

    const/4 v1, 0x0

    aget v1, p1, v1

    iput v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->windowX:I

    const/4 v1, 0x1

    aget p1, p1, v1

    iput p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$TagViewInfo;->windowY:I

    return-object v0
.end method

.method private hasTagString(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagTargetName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagSourceNameList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\\[([^\\[\\]]*)\\]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagTargetPattern:Ljava/util/regex/Pattern;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mDefaultListener:Landroid/transition/Transition$TransitionListener;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method private setAllParentsClip(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method private static setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLeft(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setTop(I)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setRight(I)V

    invoke-virtual {p0, p4}, Landroid/view/View;->setBottom(I)V

    return-void
.end method


# virtual methods
.method public addTagSourceName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagSourceNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->captureValues(Landroid/transition/TransitionValues;Z)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->captureValues(Landroid/transition/TransitionValues;Z)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12

    const-string v0, "TagTransition"

    const-string v1, "createAnimator >"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagSourceNameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\\[([^\\[\\]]*)\\]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_3

    aget-object v9, v5, v8

    invoke-direct {p0, v9, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->createTagAnimator(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v9

    if-nez v0, :cond_5

    move-object v0, v9

    goto :goto_2

    :cond_5
    if-eqz v9, :cond_6

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v0, v11, v7

    aput-object v9, v11, v4

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object v0, v10

    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-object v0
.end method

.method public setTagTargetName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagTargetName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\\[([^\\[\\]]*)\\]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mTagTargetPattern:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public withEndAction(Ljava/lang/Runnable;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mRunnableEnd:Ljava/lang/Runnable;

    return-object p0
.end method

.method public withStartAction(Ljava/lang/Runnable;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->mRunnableStart:Ljava/lang/Runnable;

    return-object p0
.end method
