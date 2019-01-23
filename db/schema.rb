# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2014_01_22_162212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_account_components", force: :cascade do |t|
    t.integer "account_id"
    t.integer "account_component_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_component_id", "account_id"], name: "account_account_components_2"
    t.index ["account_id", "account_component_id"], name: "account_account_components_1"
  end

  create_table "account_components", force: :cascade do |t|
    t.string "name"
    t.integer "price_in_cents"
    t.integer "chargify_component_number"
    t.boolean "show_component", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.integer "priority"
  end

  create_table "account_plans", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "price_in_cents"
    t.string "chargify_product_handle"
    t.integer "chargify_product_number"
    t.boolean "show_plan", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "no_users"
    t.index ["name"], name: "index_account_plans_on_name"
  end

  create_table "account_settings", force: :cascade do |t|
    t.integer "account_id"
    t.boolean "reached_limit_email_sent", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "working_day_start_time", default: "2000-01-01 09:00:00"
    t.time "working_day_end_time", default: "2000-01-01 17:00:00"
    t.string "default_currency", default: "usd"
    t.integer "common_project_id"
    t.string "working_days"
    t.string "invoice_alert_email"
    t.string "logo_file_name"
    t.string "logo_content_type"
    t.bigint "logo_file_size"
    t.datetime "logo_updated_at"
    t.string "logo_fingerprint"
    t.string "schedule_mail_email"
    t.integer "schedule_mail_frequency", default: 1
    t.datetime "schedule_mail_last_sent_at"
    t.string "expected_invoice_mail_email"
    t.integer "expected_invoice_mail_frequency", default: 1
    t.datetime "expected_invoice_mail_last_sent_at"
    t.string "rollover_alert_email"
    t.string "budget_warning_email"
    t.string "stale_opportunity_email"
    t.text "issue_tracker_username"
    t.text "issue_tracker_password"
    t.text "issue_tracker_url"
    t.boolean "hopscotch_enabled", default: false
    t.index ["account_id"], name: "index_account_settings_on_account_id"
    t.index ["common_project_id"], name: "index_account_settings_on_common_project_id"
  end

  create_table "account_trial_emails", force: :cascade do |t|
    t.integer "account_id"
    t.integer "trial_path"
    t.boolean "email_1_sent", default: false
    t.boolean "email_2_sent", default: false
    t.boolean "email_3_sent", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "email_4_sent", default: false
  end

  create_table "accounts", force: :cascade do |t|
    t.string "site_address"
    t.datetime "account_deleted_at"
    t.boolean "account_suspended", default: false
    t.integer "account_plan_id"
    t.integer "chargify_customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "trial_expires_at"
    t.index ["account_plan_id"], name: "index_accounts_on_account_plan_id"
    t.index ["chargify_customer_id"], name: "index_accounts_on_chargify_customer_id", unique: true
    t.index ["site_address"], name: "index_accounts_on_site_address", unique: true
  end

  create_table "api_keys", force: :cascade do |t|
    t.string "access_token", null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_rate_cards", force: :cascade do |t|
    t.integer "daily_cost_cents"
    t.integer "client_id"
    t.integer "rate_card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id", "rate_card_id"], name: "index_client_rate_cards_on_client_id_and_rate_card_id"
    t.index ["rate_card_id", "client_id"], name: "index_client_rate_cards_on_rate_card_id_and_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "archived", default: false
    t.text "address"
    t.string "zipcode"
    t.string "phone"
    t.string "email"
    t.string "fax"
    t.boolean "internal", default: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string "iso_code"
    t.decimal "exchange_rate", precision: 11, scale: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["iso_code"], name: "index_currencies_on_iso_code"
  end

  create_table "document_comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "document_id"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_id"], name: "index_document_comments_on_document_id"
    t.index ["user_id"], name: "index_document_comments_on_user_id"
  end

  create_table "documents", force: :cascade do |t|
    t.integer "project_id"
    t.integer "user_id"
    t.string "title"
    t.string "provider"
    t.text "provider_document_ref"
    t.string "provider_owner_names"
    t.string "mime_type"
    t.text "view_link"
    t.datetime "file_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_type"
    t.string "attachment_file_name"
    t.string "attachment_content_type"
    t.bigint "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.index ["project_id"], name: "index_documents_on_project_id"
    t.index ["user_id"], name: "index_documents_on_user_id"
  end

  create_table "entries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.integer "account_id"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_entries_on_account_id"
    t.index ["project_id"], name: "index_entries_on_project_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "features", force: :cascade do |t|
    t.integer "project_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_features_on_project_id"
  end

  create_table "invoice_deletions", force: :cascade do |t|
    t.integer "project_id"
    t.integer "account_id"
    t.integer "user_id"
    t.integer "default_currency_total_amount_cents_exc_vat"
    t.string "invoice_number"
    t.date "invoice_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_invoice_deletions_on_account_id"
    t.index ["project_id"], name: "index_invoice_deletions_on_project_id"
    t.index ["user_id"], name: "index_invoice_deletions_on_user_id"
  end

  create_table "invoice_items", force: :cascade do |t|
    t.string "name"
    t.integer "amount_cents", default: 0
    t.integer "quantity", default: 1
    t.boolean "vat", default: true
    t.integer "invoice_id"
    t.integer "payment_profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "default_currency_amount_cents"
    t.index ["invoice_id", "payment_profile_id"], name: "index_invoice_items_on_invoice_id_and_payment_profile_id"
    t.index ["payment_profile_id", "invoice_id"], name: "index_invoice_items_on_payment_profile_id_and_invoice_id"
  end

  create_table "invoice_usages", force: :cascade do |t|
    t.string "name"
    t.integer "invoice_id"
    t.integer "user_id"
    t.integer "amount_cents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "allocated_at"
    t.index ["invoice_id"], name: "index_invoice_usages_on_invoice_id"
    t.index ["user_id"], name: "index_invoice_usages_on_user_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "project_id"
    t.integer "total_amount_cents_exc_vat"
    t.integer "total_amount_cents_inc_vat"
    t.integer "invoice_status", default: 0
    t.date "invoice_date"
    t.date "due_on_date"
    t.string "invoice_number"
    t.string "terms"
    t.string "po_number"
    t.string "currency"
    t.decimal "vat_rate", precision: 10, scale: 2
    t.text "address"
    t.text "payment_methods"
    t.text "notes"
    t.decimal "exchange_rate", precision: 10, scale: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pre_payment", limit: 2
    t.integer "default_currency_total_amount_cents_exc_vat"
    t.integer "default_currency_total_amount_cents_inc_vat"
    t.string "email"
    t.integer "user_id"
    t.index ["invoice_number"], name: "index_invoices_on_invoice_number"
    t.index ["project_id"], name: "index_invoices_on_project_id"
    t.index ["user_id"], name: "index_invoices_on_user_id"
  end

  create_table "oauth_drive_tokens", force: :cascade do |t|
    t.integer "user_id"
    t.integer "provider_number"
    t.string "access_token"
    t.string "refresh_token"
    t.string "client_number"
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_oauth_drive_tokens_on_user_id"
  end

  create_table "payment_profile_rollovers", force: :cascade do |t|
    t.text "reason_for_date_change"
    t.date "old_expected_payment_date"
    t.date "new_expected_payment_date"
    t.integer "payment_profile_id"
    t.integer "project_id"
    t.integer "account_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_payment_profile_rollovers_on_account_id"
    t.index ["payment_profile_id"], name: "index_payment_profile_rollovers_on_payment_profile_id"
    t.index ["project_id"], name: "index_payment_profile_rollovers_on_project_id"
    t.index ["user_id"], name: "index_payment_profile_rollovers_on_user_id"
  end

  create_table "payment_profiles", force: :cascade do |t|
    t.integer "project_id"
    t.integer "expected_cost_cents"
    t.decimal "expected_minutes", precision: 20, scale: 2
    t.string "name"
    t.date "expected_payment_date"
    t.boolean "generate_cost_from_time", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_payment_profiles_on_project_id"
  end

  create_table "phases", force: :cascade do |t|
    t.string "name"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "project_comment_id"
    t.index ["project_comment_id"], name: "index_project_comments_on_project_comment_id"
    t.index ["project_id"], name: "index_project_comments_on_project_id"
    t.index ["user_id"], name: "index_project_comments_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "archived", default: false
    t.integer "account_id"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color", default: "#B7C18F"
    t.integer "event_type", default: 0
    t.string "project_code"
    t.integer "team_id"
    t.integer "business_owner_id"
    t.integer "project_manager_id"
    t.integer "current_rag_status", default: 0
    t.integer "expected_rag_status", default: 0
    t.string "project_status"
    t.boolean "project_status_overridden"
    t.integer "percentage_complete", default: 0
    t.decimal "last_budget_check", precision: 11, scale: 2, default: "0.0"
    t.string "issue_tracker_id"
    t.integer "phase_id"
    t.index ["account_id", "client_id"], name: "index_projects_on_account_id_and_client_id"
    t.index ["account_id", "name", "client_id"], name: "index_projects_on_account_id_and_name_and_client_id"
    t.index ["business_owner_id"], name: "index_projects_on_business_owner_id"
    t.index ["client_id"], name: "index_projects_on_client_id"
    t.index ["project_manager_id"], name: "index_projects_on_project_manager_id"
    t.index ["team_id"], name: "index_projects_on_team_id"
  end

  create_table "qa_stats", force: :cascade do |t|
    t.text "ticket_breakdown"
    t.integer "project_id"
    t.integer "total_tickets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quote_activities", force: :cascade do |t|
    t.integer "quote_id"
    t.integer "rate_card_id"
    t.string "name"
    t.integer "estimate_scale", default: 1
    t.bigint "min_estimated_minutes", default: 0
    t.bigint "max_estimated_minutes", default: 0
    t.bigint "min_amount_cents", default: 0
    t.bigint "max_amount_cents", default: 0
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "estimate_type", default: 0
    t.decimal "discount_percentage", precision: 10, scale: 2, default: "0.0"
    t.index ["quote_id"], name: "index_quote_activities_on_quote_id"
    t.index ["rate_card_id"], name: "index_quote_activities_on_rate_card_id"
  end

  create_table "quote_default_sections", force: :cascade do |t|
    t.integer "account_id"
    t.integer "position"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "cost_section", default: false
    t.index ["account_id"], name: "index_quote_default_sections_on_account_id"
  end

  create_table "quote_sections", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "position"
    t.integer "quote_id"
    t.boolean "cost_section", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quote_id"], name: "index_quote_sections_on_quote_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.integer "project_id"
    t.string "title"
    t.decimal "vat_rate", precision: 10, scale: 2
    t.decimal "discount_percentage", precision: 10, scale: 2
    t.boolean "new_quote", default: true
    t.integer "quote_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "po_number"
    t.integer "quote_status"
    t.string "currency"
    t.integer "user_id"
    t.integer "last_saved_by_id"
    t.decimal "exchange_rate", precision: 10, scale: 6
    t.datetime "exchange_rate_updated_at"
    t.integer "extra_cost_cents", default: 0
    t.string "extra_cost_title"
    t.boolean "draft", default: true
    t.index ["last_saved_by_id"], name: "index_quotes_on_last_saved_by_id"
    t.index ["project_id"], name: "index_quotes_on_project_id"
    t.index ["quote_id"], name: "index_quotes_on_quote_id"
    t.index ["title"], name: "index_quotes_on_title"
    t.index ["user_id"], name: "index_quotes_on_user_id"
  end

  create_table "rate_card_payment_profiles", force: :cascade do |t|
    t.integer "payment_profile_id"
    t.integer "rate_card_id"
    t.integer "percentage", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payment_profile_id", "rate_card_id"], name: "rate_card_profile_in2"
    t.index ["rate_card_id", "payment_profile_id"], name: "rate_card_profile_in1"
  end

  create_table "rate_cards", force: :cascade do |t|
    t.string "service_type"
    t.integer "daily_cost_cents"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_rate_cards_on_account_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "role_id"
    t.integer "user_id"
    t.index ["role_id"], name: "index_roles_users_on_role_id"
    t.index ["user_id"], name: "index_roles_users_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "project_id"
    t.bigint "estimated_minutes", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "feature_id"
    t.integer "position"
    t.boolean "count_towards_time_worked", default: true
    t.integer "estimate_scale", default: 1
    t.integer "quote_activity_id"
    t.integer "rate_card_id"
    t.boolean "archived", default: false
    t.index ["feature_id"], name: "index_tasks_on_feature_id"
    t.index ["project_id", "feature_id"], name: "index_tasks_on_project_id_and_feature_id"
  end

  create_table "team_users", force: :cascade do |t|
    t.integer "team_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id", "user_id"], name: "index_team_users_on_team_id_and_user_id"
    t.index ["user_id", "team_id"], name: "index_team_users_on_user_id_and_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_teams_on_account_id"
  end

  create_table "timings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "duration_minutes"
    t.integer "project_id"
    t.integer "task_id"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.boolean "submitted", default: false
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_timings_on_project_id"
    t.index ["task_id"], name: "index_timings_on_task_id"
    t.index ["user_id"], name: "index_timings_on_user_id"
  end

  create_table "tweets", force: :cascade do |t|
    t.bigint "tweet_id_ref"
    t.string "title"
    t.string "user_name"
    t.datetime "published_at"
    t.boolean "active", default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "top_priority"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "remember_token", limit: 40
    t.datetime "remember_token_expires_at"
    t.string "password_digest"
    t.string "password_reset_code"
    t.integer "account_id"
    t.datetime "last_login_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "time_zone"
    t.boolean "archived", default: false
    t.integer "number_of_logins", default: 0
    t.text "biography"
    t.index ["account_id", "firstname", "lastname"], name: "index_users_on_account_id_and_firstname_and_lastname"
  end

end
